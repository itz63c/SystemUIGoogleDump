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
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

.field private mCanShowTutorial:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplaySize:Landroid/graphics/Point;

.field private final mLastUpdatedBounds:Landroid/graphics/Rect;

.field private final mPackageName:Ljava/lang/String;

.field private mStartOneHandedDescription:Ljava/lang/String;

.field private mStopOneHandedDescription:Ljava/lang/String;

.field private mTargetViewContainer:Landroid/view/ViewGroup;

.field private mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

.field private mTutorialAreaHeight:I

.field private mTutorialView:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$cRwtovI250L-uG03eB3RNBsisRI(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mLastUpdatedBounds:Landroid/graphics/Rect;

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 73
    sget-object v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    .line 81
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mPackageName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 105
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "accessibility"

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$string;->accessibility_action_start_one_handed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mStartOneHandedDescription:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$string;->accessibility_action_stop_one_handed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mStopOneHandedDescription:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "one_handed_tutorial_show_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 115
    :goto_0
    iput-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/wm/shell/R$fraction;->config_one_handed_offset:I

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string v2, "persist.debug.one_handed_offset_percentage"

    .line 118
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 120
    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    .line 122
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Landroid/content/Context;)V

    invoke-interface {p2, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;F)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->onAnimationUpdate(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;)Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->createTutorialTarget()V

    return-void
.end method

.method private announcementForScreenReader(Z)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 167
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/16 v1, 0x4000

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 169
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mStartOneHandedDescription:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mStopOneHandedDescription:Ljava/lang/String;

    .line 169
    :goto_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    return-void
.end method

.method private canShowTutorial()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    if-nez v0, :cond_0

    .line 231
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private createTutorialTarget()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    .line 187
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 186
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private getTutorialTargetLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    .line 206
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialAreaHeight:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7e8

    const/16 v6, 0x108

    const/4 v7, -0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/16 p0, 0x33

    .line 212
    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 213
    iget p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p0, p0, 0x10

    iput p0, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 p0, 0x0

    .line 214
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string p0, "one-handed-tutorial-overlay"

    .line 215
    invoke-virtual {v8, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v8
.end method

.method private synthetic lambda$new$0(Landroid/content/Context;)V
    .locals 3

    .line 123
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->one_handed_tutorial:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    .line 125
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 126
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 127
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTutorialView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private onAnimationUpdate(F)V
    .locals 2

    .line 238
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->canShowTutorial()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 243
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private removeTutorialFromWindowManager()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private updateFinished(IF)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->canShowTutorial()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 152
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private updateTutorialCount()V
    .locals 5

    .line 156
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "one_handed_tutorial_show_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/4 v4, 0x2

    .line 158
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v0, v4, :cond_0

    move v2, v3

    .line 159
    :cond_0
    iput-boolean v2, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mCanShowTutorial:Z

    .line 160
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedTutorialHandlerstates: "

    .line 221
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mLastUpdatedBounds="

    .line 222
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mLastUpdatedBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method getAnimationCallback()Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mAnimationCallback:Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;

    return-object p0
.end method

.method public onStartFinished(Landroid/graphics/Rect;)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateFinished(IF)V

    .line 134
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateTutorialCount()V

    const/4 p1, 0x1

    .line 135
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->announcementForScreenReader(Z)V

    .line 136
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-void
.end method

.method public onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTargetViewContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->updateFinished(IF)V

    const/4 p1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->announcementForScreenReader(Z)V

    .line 143
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->removeTutorialFromWindowManager()V

    .line 144
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;->UNSET:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler;->mTriggerState:Lcom/android/wm/shell/onehanded/OneHandedTutorialHandler$ONE_HANDED_TRIGGER_STATE;

    return-void
.end method
