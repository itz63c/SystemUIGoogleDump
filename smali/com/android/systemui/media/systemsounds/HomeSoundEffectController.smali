.class public Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;
.super Lcom/android/systemui/SystemUI;
.source "HomeSoundEffectController.java"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mIsLastTaskHome:Z

.field private final mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/systemui/shared/system/TaskStackChangeListeners;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    .line 49
    iput-object p2, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    .line 50
    iput-object p3, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->handleHomeTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private handleHomeTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    .line 74
    invoke-direct {p0, p1}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 80
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mIsLastTaskHome:Z

    return-void
.end method

.method private isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    .line 67
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isHomeSoundEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    new-instance v1, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/systemsounds/HomeSoundEffectController$1;-><init>(Lcom/android/systemui/media/systemsounds/HomeSoundEffectController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_0
    return-void
.end method
