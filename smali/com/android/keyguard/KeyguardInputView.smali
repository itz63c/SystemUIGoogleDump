.class public abstract Lcom/android/keyguard/KeyguardInputView;
.super Landroid/widget/LinearLayout;
.source "KeyguardInputView.java"


# instance fields
.field private final mMotionEventListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/Gefingerpoken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$0tXmb7PnKbHhjIrKucYKWr-NXI4(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3Nk5cczqrGtc3dO3pfQ_p0Rl71Q(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->lambda$onTouchEvent$0(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    return-void
.end method

.method private static synthetic lambda$onInterceptTouchEvent$1(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    .line 86
    invoke-interface {p1, p0}, Lcom/android/systemui/Gefingerpoken;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onTouchEvent$0(Landroid/view/MotionEvent;Lcom/android/systemui/Gefingerpoken;)Z
    .locals 0

    .line 79
    invoke-interface {p1, p0}, Lcom/android/systemui/Gefingerpoken;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method addMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateForIme(F)V
    .locals 0

    return-void
.end method

.method disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getAnimationListener(I)Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    .line 91
    new-instance v0, Lcom/android/keyguard/KeyguardInputView$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardInputView$1;-><init>(Lcom/android/keyguard/KeyguardInputView;I)V

    return-object v0
.end method

.method abstract getTitle()Ljava/lang/CharSequence;
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardInputView-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardInputView-$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardInputView-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/keyguard/KeyguardInputView-$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method removeMotionEventListener(Lcom/android/systemui/Gefingerpoken;)V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputView;->mMotionEventListener:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method startAppearAnimation()V
    .locals 0

    return-void
.end method

.method startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
