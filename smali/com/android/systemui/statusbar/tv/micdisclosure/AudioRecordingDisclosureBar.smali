.class public Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;
.super Ljava/lang/Object;
.source "AudioRecordingDisclosureBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

.field private final mConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mContext:Landroid/content/Context;

.field private final mExemptPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIndicatorView:Landroid/view/View;

.field private mIsEnabled:Z

.field private mState:I

.field private mViewAndWindowAdded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 93
    iput v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    .line 104
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    .line 364
    new-instance v0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$3;-><init>(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mConfigChangeListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->reloadExemptPackages()V

    const-string v1, "privacy"

    const-string v2, "mic_disclosure_enabled"

    const/4 v3, 0x1

    .line 112
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIsEnabled:Z

    if-eqz v2, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->start()V

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mViewAndWindowAdded:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)Landroid/view/View;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->animateAppearance()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->onAnimationFinished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->reloadExemptPackages()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIsEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->start()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->stop()V

    return-void
.end method

.method private animateAlphaTo(F)V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 284
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 285
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$2;-><init>(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 317
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 322
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private animateAppearance()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 272
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->animateAlphaTo(F)V

    return-void
.end method

.method private animateDisappearance()V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->animateAlphaTo(F)V

    return-void
.end method

.method private hasActiveRecorders()Z
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->getActivePackages()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 339
    iget-object v4, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private hideIndicatorIfNeeded()V
    .locals 2

    .line 195
    iget v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->hasActiveRecorders()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mViewAndWindowAdded:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 202
    iput v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->animateDisappearance()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->removeIndicatorView()V

    :goto_0
    return-void
.end method

.method private onAnimationFinished()V
    .locals 2

    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 329
    iput v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->removeIndicatorView()V

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    :cond_1
    :goto_0
    return-void
.end method

.method private reloadExemptPackages()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$array;->audio_recording_disclosure_exempt_apps:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    const-string v1, "privacy"

    const-string v2, "mic_disclosure_exempt_packages"

    const/4 v3, 0x0

    .line 129
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-static {v2}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->splitByComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 127
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    const-string v0, "mic_disclosure_forced_packages"

    .line 132
    invoke-static {v1, v0, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->splitByComma(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-interface {p0, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private removeIndicatorView()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 353
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    .line 354
    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, 0x0

    .line 356
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mViewAndWindowAdded:Z

    return-void
.end method

.method private showIfNeeded()V
    .locals 9

    .line 215
    iget v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 220
    iput v2, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    if-ne v0, v1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->animateAppearance()V

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$layout;->tv_audio_recording_indicator:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    const/4 v3, 0x0

    .line 234
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    .line 236
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar$1;-><init>(Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;)V

    .line 237
    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 256
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x7d6

    const/16 v7, 0x8

    const/4 v8, -0x3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    if-eqz v2, :cond_3

    const/4 v1, 0x5

    :cond_3
    or-int/lit8 v1, v1, 0x30

    .line 262
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "MicrophoneCaptureIndicator"

    .line 263
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 267
    iget-object p0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mIndicatorView:Landroid/view/View;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static splitByComma(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 360
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, ","

    .line 361
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 360
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private start()V
    .locals 5

    .line 137
    iget v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    .line 143
    new-instance v3, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/RecordAudioAppOpObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V

    aput-object v3, v1, v0

    new-instance v0, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/MicrophoneForegroundServicesObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver$OnAudioActivityStateChangeListener;)V

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    array-length v0, v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_2

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->start()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private stop()V
    .locals 2

    .line 156
    iget v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 159
    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mAudioActivityObservers:[Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioActivityObserver;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 166
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mState:I

    if-eqz v0, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->removeIndicatorView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onAudioActivityStateChange(ZLjava/lang/String;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->mExemptPackages:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->showIfNeeded()V

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tv/micdisclosure/AudioRecordingDisclosureBar;->hideIndicatorIfNeeded()V

    :goto_0
    return-void
.end method
