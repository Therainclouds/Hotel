const dreamGallery = document.getElementById('dreamGallery');
const videoGallery = document.getElementById('videoGallery');
const generateDreamsBtn = document.getElementById('generateDreams');
const resetDreamsBtn = document.getElementById('resetDreams');
const generateVideosBtn = document.getElementById('generateVideos');
const dreamPromptInput = document.getElementById('dreamPrompt');
const voiceInputBtn = document.getElementById('voiceInput');
const analysisCard = document.getElementById('analysisCard');
const refreshAnalysisBtn = document.getElementById('refreshAnalysis');
const saveAnalysisBtn = document.getElementById('saveAnalysis');
const loginModal = document.getElementById('loginModal');
const paymentModal = document.getElementById('paymentModal');
const openLogin = document.getElementById('openLogin');
const modalCloseButtons = document.querySelectorAll('[data-close]');

const dreamCardTemplate = document.getElementById('dreamCardTemplate');
const videoCardTemplate = document.getElementById('videoCardTemplate');

const DREAM_LIMIT_BEFORE_LOGIN = 3;
const DREAM_LIMIT_BEFORE_PAYMENT = 10;

let recognition;
let isRecognizing = false;

const demoDreams = [
    {
        title: '星海漫游',
        style: '超现实光影 · 星河流动',
        image: 'linear-gradient(120deg, rgba(115, 126, 255, 0.6), rgba(75, 179, 255, 0.45))'
    },
    {
        title: '童年庭院',
        style: '胶片质感 · 暖色记忆',
        image: 'linear-gradient(130deg, rgba(255, 199, 134, 0.6), rgba(255, 120, 180, 0.45))'
    },
    {
        title: '海底心象',
        style: '深蓝梦境 · 沉浸氛围',
        image: 'linear-gradient(150deg, rgba(58, 115, 255, 0.6), rgba(35, 224, 189, 0.45))'
    }
];

const demoVideos = [
    {
        title: '星尘呼吸',
        style: '镜头语言：漂浮 + 呼吸光效',
        gradient: 'linear-gradient(150deg, rgba(144, 118, 255, 0.55), rgba(93, 201, 255, 0.5))'
    },
    {
        title: '梦回童话',
        style: '镜头语言：慢推 + 胶片颗粒',
        gradient: 'linear-gradient(160deg, rgba(255, 177, 112, 0.55), rgba(255, 106, 160, 0.5))'
    },
    {
        title: '海浪共鸣',
        style: '镜头语言：沉浸环绕 + 蓝绿色调',
        gradient: 'linear-gradient(170deg, rgba(75, 201, 178, 0.55), rgba(83, 127, 255, 0.5))'
    }
];

const interpretationTemplates = [
    '梦见「{prompt}」象征着你近期对未知的好奇与探索欲。建议在醒来后记录灵感，给自己一段冥想时间，倾听内心的声音。',
    '「{prompt}」的梦境常常与情绪释放相关。试着通过绘画或音乐，赋予这些意象新的表达，帮助潜意识完成自我疗愈。',
    '当你梦到「{prompt}」，周公解梦认为这与生活转变相关。保持开放的心态，拥抱变化，你会发现新的机会悄然出现。'
];

function getUsageCount() {
    const count = Number(localStorage.getItem('dreamUsage') || '0');
    return Number.isNaN(count) ? 0 : count;
}

function incrementUsage() {
    const next = getUsageCount() + 1;
    localStorage.setItem('dreamUsage', String(next));
    return next;
}

function shouldPromptLogin() {
    return getUsageCount() >= DREAM_LIMIT_BEFORE_LOGIN;
}

function shouldPromptPayment() {
    return getUsageCount() >= DREAM_LIMIT_BEFORE_PAYMENT;
}

function openModal(modal) {
    if (modal) {
        modal.classList.add('active');
    }
}

function closeModal(modal) {
    if (modal) {
        modal.classList.remove('active');
    }
}

function renderDreams(dreams) {
    dreamGallery.innerHTML = '';
    dreams.forEach(dream => {
        const node = dreamCardTemplate.content.cloneNode(true);
        const card = node.querySelector('.card');
        const media = node.querySelector('.card-media');
        const titleEl = node.querySelector('h3');
        const styleEl = node.querySelector('.style');
        media.style.background = dream.image;
        media.dataset.prompt = dreamPromptInput.value;
        titleEl.textContent = dream.title;
        styleEl.textContent = dream.style;
        dreamGallery.appendChild(node);
    });
}

function renderVideos(videos) {
    videoGallery.innerHTML = '';
    videos.forEach(video => {
        const node = videoCardTemplate.content.cloneNode(true);
        const media = node.querySelector('.card-media');
        const titleEl = node.querySelector('h3');
        const styleEl = node.querySelector('.style');
        media.style.background = video.gradient;
        media.innerHTML = '<div class="video-play">▶</div>';
        titleEl.textContent = video.title;
        styleEl.textContent = video.style;
        videoGallery.appendChild(node);
    });
}

async function callDreamApi(prompt) {
    const body = {
        prompt,
        styles: ['ethereal', 'nostalgic', 'deep-sea'],
        resolution: '1024x1024'
    };

    try {
        const response = await fetch('https://api.jimeng.com/v1/dream/visualize', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer YOUR_JIMENG_API_KEY'
            },
            body: JSON.stringify(body)
        });

        if (!response.ok) {
            throw new Error('网络请求失败');
        }

        const data = await response.json();
        return (data?.results || []).map((item, index) => ({
            title: item.title || demoDreams[index]?.title || `梦境视觉 ${index + 1}`,
            style: item.style || demoDreams[index]?.style || '自定义风格',
            image: `url(${item.imageUrl})`
        }));
    } catch (error) {
        console.warn('即梦 API 请求失败，启用演示数据：', error);
        return demoDreams.map(dream => ({ ...dream }));
    }
}

async function callVideoApi(prompt) {
    try {
        const response = await fetch('https://api.jimeng.com/v1/dream/video', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
                'Authorization': 'Bearer YOUR_JIMENG_API_KEY'
            },
            body: JSON.stringify({ prompt, variations: 3 })
        });

        if (!response.ok) {
            throw new Error('网络请求失败');
        }

        const data = await response.json();
        return (data?.results || []).map((item, index) => ({
            title: item.title || demoVideos[index]?.title || `梦境视频 ${index + 1}`,
            style: item.description || demoVideos[index]?.style || '梦境动态',
            gradient: `url(${item.thumbnailUrl})`
        }));
    } catch (error) {
        console.warn('即梦视频 API 请求失败，启用演示数据：', error);
        return demoVideos.map(video => ({ ...video }));
    }
}

function updateAnalysis(prompt) {
    const template = interpretationTemplates[Math.floor(Math.random() * interpretationTemplates.length)];
    const text = template.replace('{prompt}', prompt || '你的梦境');
    const body = analysisCard.querySelector('.analysis-body');
    body.textContent = text;
}

async function handleGenerateDreams() {
    const prompt = dreamPromptInput.value.trim();
    if (!prompt) {
        dreamPromptInput.focus();
        dreamPromptInput.classList.add('shake');
        setTimeout(() => dreamPromptInput.classList.remove('shake'), 600);
        return;
    }

    generateDreamsBtn.disabled = true;
    generateDreamsBtn.textContent = '生成中…';

    const dreams = await callDreamApi(prompt);
    renderDreams(dreams);
    updateAnalysis(prompt);

    const usage = incrementUsage();

    if (usage === DREAM_LIMIT_BEFORE_LOGIN) {
        openModal(loginModal);
    } else if (usage === DREAM_LIMIT_BEFORE_PAYMENT) {
        openModal(paymentModal);
    }

    generateDreamsBtn.disabled = false;
    generateDreamsBtn.textContent = '生成梦境';
}

async function handleGenerateVideos() {
    const prompt = dreamPromptInput.value.trim();
    if (!prompt) {
        dreamPromptInput.focus();
        dreamPromptInput.classList.add('shake');
        setTimeout(() => dreamPromptInput.classList.remove('shake'), 600);
        return;
    }

    generateVideosBtn.disabled = true;
    generateVideosBtn.textContent = '转换中…';

    const videos = await callVideoApi(prompt);
    renderVideos(videos);

    generateVideosBtn.disabled = false;
    generateVideosBtn.textContent = '转换为梦境视频';
}

function resetDreams() {
    dreamGallery.innerHTML = '';
    videoGallery.innerHTML = '';
    dreamPromptInput.value = '';
    analysisCard.querySelector('.analysis-body').textContent = '输入梦境后，这里将呈现符号意义、情绪暗示与心理按摩建议。';
}

function initVoiceRecognition() {
    const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
    if (!SpeechRecognition) {
        voiceInputBtn.disabled = true;
        voiceInputBtn.title = '当前浏览器暂不支持语音输入';
        return;
    }

    recognition = new SpeechRecognition();
    recognition.lang = 'zh-CN';
    recognition.interimResults = false;

    recognition.addEventListener('start', () => {
        isRecognizing = true;
        voiceInputBtn.classList.add('recording');
    });

    recognition.addEventListener('result', event => {
        const transcript = Array.from(event.results)
            .map(result => result[0])
            .map(result => result.transcript)
            .join('');
        dreamPromptInput.value = transcript;
    });

    recognition.addEventListener('end', () => {
        isRecognizing = false;
        voiceInputBtn.classList.remove('recording');
    });

    recognition.addEventListener('error', () => {
        isRecognizing = false;
        voiceInputBtn.classList.remove('recording');
    });
}

function toggleVoiceInput() {
    if (!recognition) return;
    if (isRecognizing) {
        recognition.stop();
    } else {
        recognition.start();
    }
}

function initUsageState() {
    if (!localStorage.getItem('dreamUsage')) {
        localStorage.setItem('dreamUsage', '0');
    }
}

function initModals() {
    modalCloseButtons.forEach(button => {
        button.addEventListener('click', event => {
            const modal = event.target.closest('.modal');
            closeModal(modal);
        });
    });

    [loginModal, paymentModal].forEach(modal => {
        modal?.addEventListener('click', event => {
            if (event.target === modal) {
                closeModal(modal);
            }
        });
    });

    openLogin?.addEventListener('click', () => {
        openModal(loginModal);
    });
}

function initSaveAnalysis() {
    saveAnalysisBtn.addEventListener('click', () => {
        const savedDreams = JSON.parse(localStorage.getItem('savedDreams') || '[]');
        savedDreams.push({
            prompt: dreamPromptInput.value.trim(),
            analysis: analysisCard.querySelector('.analysis-body').textContent,
            timestamp: new Date().toISOString()
        });
        localStorage.setItem('savedDreams', JSON.stringify(savedDreams));
        saveAnalysisBtn.textContent = '已收藏';
        saveAnalysisBtn.disabled = true;
        setTimeout(() => {
            saveAnalysisBtn.textContent = '收藏至梦境日记';
            saveAnalysisBtn.disabled = false;
        }, 2000);
    });
}

function initRefreshAnalysis() {
    refreshAnalysisBtn.addEventListener('click', () => {
        const prompt = dreamPromptInput.value.trim();
        updateAnalysis(prompt);
    });
}

function init() {
    initUsageState();
    initVoiceRecognition();
    initModals();
    initSaveAnalysis();
    initRefreshAnalysis();

    generateDreamsBtn.addEventListener('click', handleGenerateDreams);
    generateVideosBtn.addEventListener('click', handleGenerateVideos);
    resetDreamsBtn.addEventListener('click', resetDreams);
    voiceInputBtn.addEventListener('click', toggleVoiceInput);

    if (shouldPromptLogin()) {
        openModal(loginModal);
    }
    if (shouldPromptPayment()) {
        openModal(paymentModal);
    }
}

window.addEventListener('DOMContentLoaded', init);
