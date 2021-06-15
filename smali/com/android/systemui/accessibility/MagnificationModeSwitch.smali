.class Lcom/android/systemui/accessibility/MagnificationModeSwitch;
.super Ljava/lang/Object;
.source "MagnificationModeSwitch.java"

# interfaces
.implements Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;


# static fields
.field static final DEFAULT_FADE_OUT_ANIMATION_DELAY_MS:I = 0x1388
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FADING_ANIMATION_DURATION_MS:J = 0x12cL
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mContext:Landroid/content/Context;

.field private final mFadeInAnimationTask:Ljava/lang/Runnable;

.field private final mFadeOutAnimationTask:Ljava/lang/Runnable;

.field private final mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

.field private final mImageView:Landroid/widget/ImageView;

.field mIsFadeOutAnimating:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mIsVisible:Z

.field private mMagnificationMode:I

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private mSingleTapDetected:Z

.field private mUiTimeout:I

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$A688XKQy5qtf3I-KnUay3pjWp2s(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$setSystemGestureExclusion$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Eg6g7usYwYhsQfs_vErSLcJ1CrU(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$GV-kRiJy1uktjMJpSGhiL82FDJw(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZPatOWlh3FAjs7S6F4h-3BbUufY(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$fofjmRfBWUWHTVsQBQtJBGBBy3o(Lcom/android/systemui/accessibility/MagnificationModeSwitch;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 74
    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->createView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    const/4 v1, 0x1

    .line 67
    iput v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    .line 79
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 80
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const-string/jumbo v0, "window"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    .line 83
    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 84
    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->applyResourcesValues()V

    .line 86
    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    new-instance v0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$1;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 111
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Ljava/lang/Runnable;

    .line 117
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    .line 125
    new-instance p2, Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, p1, v0, p0}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/accessibility/MagnificationGestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Ljava/lang/CharSequence;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->formatStateDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->handleSingleTap()V

    return-void
.end method

.method private applyResourcesValues()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->magnification_switch_button_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 139
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getIconResId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private static createLayoutParams(Landroid/content/Context;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 286
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x7f7

    const/16 v4, 0x8

    const/4 v5, -0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v0, 0x55

    .line 292
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 293
    invoke-static {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getAccessibilityWindowTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    return-object v6
.end method

.method private static createView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 1

    .line 271
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 272
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 273
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setFocusable(Z)V

    const/4 p0, 0x0

    .line 274
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-object v0
.end method

.method private formatStateDescription()Ljava/lang/CharSequence;
    .locals 2

    .line 130
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    sget v0, Lcom/android/systemui/R$string;->magnification_mode_switch_state_window:I

    goto :goto_0

    .line 132
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->magnification_mode_switch_state_full_screen:I

    .line 133
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAccessibilityWindowTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const v0, 0x1040123

    .line 298
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getIconResId(I)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 281
    sget p0, Lcom/android/systemui/R$drawable;->ic_open_in_new_window:I

    goto :goto_0

    .line 282
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->ic_open_in_new_fullscreen:I

    :goto_0
    return p0
.end method

.method private handleSingleTap()V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->toggleMagnificationMode()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    .line 112
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    return-void
.end method

.method private synthetic lambda$setSystemGestureExclusion$3()V
    .locals 4

    .line 303
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 305
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result p0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 303
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private moveButton(FF)V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 180
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p1, p1

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 181
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 144
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 147
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mGestureDetector:Lcom/android/systemui/accessibility/MagnificationGestureDetector;

    invoke-virtual {p0, p2}, Lcom/android/systemui/accessibility/MagnificationGestureDetector;->onTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private setSystemGestureExclusion()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private stopFadeOutAnimation()V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    :cond_0
    return-void
.end method

.method private toggleMagnificationMode()V
    .locals 3

    .line 254
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    xor-int/lit8 v0, v0, 0x3

    .line 256
    iput v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 257
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getIconResId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "accessibility_magnification_mode"

    const/4 v2, -0x2

    .line 258
    invoke-static {p0, v1, v0, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateAccessibilityWindowTitle()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getAccessibilityWindowTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method onConfigurationChanged(I)V
    .locals 2

    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_1

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->applyResourcesValues()V

    .line 233
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSystemGestureExclusion()V

    :cond_0
    return-void

    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_2

    .line 241
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->updateAccessibilityWindowTitle()V

    :cond_2
    return-void
.end method

.method public onDrag(FF)Z
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->moveButton(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onFinish(FF)Z
    .locals 0

    .line 171
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    if-nez p1, :cond_0

    .line 172
    iget p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->showButton(I)V

    :cond_0
    const/4 p1, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTap()Z
    .locals 1

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mSingleTapDetected:Z

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->handleSingleTap()V

    return v0
.end method

.method public onStart(FF)Z
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stopFadeOutAnimation()V

    const/4 p0, 0x1

    return p0
.end method

.method removeButton()V
    .locals 3

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 190
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 191
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    .line 193
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 194
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 195
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    .line 196
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 197
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method showButton(I)V
    .locals 3

    .line 201
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    if-eq v0, p1, :cond_0

    .line 202
    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mMagnificationMode:I

    .line 203
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getIconResId(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    if-nez p1, :cond_1

    .line 206
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->setSystemGestureExclusion()V

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsVisible:Z

    .line 210
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeInAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v0, 0x1388

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    .line 217
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stopFadeOutAnimation()V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mFadeOutAnimationTask:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mUiTimeout:I

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
