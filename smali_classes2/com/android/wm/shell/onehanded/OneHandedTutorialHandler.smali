.class public Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;
.super Ljava/lang/Object;
.source "OneHandedTutorialHandler.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    }
.end annotation


# instance fields
.field private final mAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

.field private mCanShowTutorial:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDisplayBounds:Landroid/graphics/Rect;

.field private mIsOneHandedMode:Z

.field private final mPackageName:Ljava/lang/String;

.field private mTargetViewContainer:Landroid/view/ViewGroup;

.field private mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

.field private mTutorialAreaHeight:I

.field private final mTutorialHeightRatio:F

.field private mTutorialView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$HBjIFHmUhAtgt3ezMrW5rRc1hL4(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->lambda$new$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Landroid/view/WindowManager;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    .line 79
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    .line 106
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    .line 107
    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mPackageName:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/wm/shell/R$fraction;->config_one_handed_offset:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p1

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float/2addr p1, p3

    .line 113
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const-string v1, "persist.debug.one_handed_offset_percentage"

    .line 112
    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p3

    .line 114
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialHeightRatio:F

    .line 115
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V

    .line 116
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string p2, "one_handed_tutorial_show_count"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_0

    move v0, p3

    .line 118
    :cond_0
    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    .line 119
    iput-boolean p3, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mIsOneHandedMode:Z

    .line 121
    new-instance p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V

    invoke-interface {p4, p1}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->canShowTutorial()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Landroid/view/ViewGroup;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->attachTurtorialTarget()V

    return-void
.end method

.method private attachTurtorialTarget()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 193
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 192
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private canShowTutorial()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    if-nez v0, :cond_0

    .line 241
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 212
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 213
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    const/16 v6, 0x108

    const/4 v7, -0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 p0, 0x33

    .line 218
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 219
    iget p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p0, 0x0

    .line 220
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p0, "one-handed-tutorial-overlay"

    .line 221
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v8
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->recreateTutorialView(Landroid/content/Context;)V

    return-void
.end method

.method private recreateTutorialView(Landroid/content/Context;)V
    .locals 3

    .line 155
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->one_handed_tutorial:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 157
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 158
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mIsOneHandedMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private removeTutorialFromWindowManager()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateFinished(IF)V
    .locals 1

    .line 164
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->canShowTutorial()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 167
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mIsOneHandedMode:Z

    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 169
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private updateTutorialCount()V
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "one_handed_tutorial_show_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v4, 0x2

    .line 175
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v4, :cond_0

    move v2, v3

    .line 176
    :cond_0
    iput-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    .line 177
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedTutorialHandler"

    .line 227
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mTriggerState="

    .line 228
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mDisplayBounds="

    .line 230
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mTutorialAreaHeight="

    .line 232
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 233
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method getAnimationCallback()Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    if-nez v0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeTutorialFromWindowManager()V

    .line 256
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->recreateTutorialView(Landroid/content/Context;)V

    .line 257
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->attachTurtorialTarget()V

    return-void
.end method

.method public onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 3

    .line 146
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p1

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p1

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialHeightRatio:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    return-void
.end method

.method public onStartFinished(Landroid/graphics/Rect;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateFinished(IF)V

    .line 129
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateTutorialCount()V

    .line 130
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-void
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 135
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateFinished(IF)V

    .line 136
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeTutorialFromWindowManager()V

    .line 137
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-void
.end method
