.class public Lcom/android/systemui/screenshot/ScreenshotView;
.super Landroid/widget/FrameLayout;
.source "ScreenshotView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/ScreenshotView$SwipeDismissHandler;,
        Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;,
        Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActionsContainer:Landroid/widget/HorizontalScrollView;

.field private mActionsContainerBackground:Landroid/widget/ImageView;

.field private mActionsView:Landroid/widget/LinearLayout;

.field private mBackgroundProtection:Landroid/widget/ImageView;

.field private mCallbacks:Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;

.field private final mCornerSizeX:F

.field private mDirectionLTR:Z

.field private mDismissAnimation:Landroid/animation/Animator;

.field private mDismissButton:Landroid/widget/FrameLayout;

.field private final mDismissDeltaY:F

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

.field private final mFastOutSlowIn:Landroid/view/animation/Interpolator;

.field private mLeftInset:I

.field private mNavMode:I

.field private mOrientationPortrait:Z

.field private mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

.field private mPendingSharedTransition:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mRightInset:I

.field private mScreenshotFlash:Landroid/widget/ImageView;

.field private mScreenshotPreview:Landroid/widget/ImageView;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private mScreenshotStatic:Landroid/view/View;

.field private mScrollChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

.field private mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

.field private final mSmartChips:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/screenshot/ScreenshotActionChip;",
            ">;"
        }
    .end annotation
.end field

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$6mA4lfPqxCmqT365yKIY65vYpUE(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotTranslateDismissAnimation$13(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AmWVXMWkpXyf8SPuOhNYRRYBbt0(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$setChipIntents$11(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C2q_jn4S-F4ii-53XaarMv7pKYk(Lcom/android/systemui/screenshot/ScreenshotView;FFFLandroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotDropInAnimation$4(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F5Dz_z5pqJJn1Ku8ZSdYD4JkI7I(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotFadeDismissAnimation$15(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HLfHaz_q7SgwRZVS2tDG-RZBmMc(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotDropInAnimation$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JHNNxAzWmbfhtOF-a6xpiA8m-Ek(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$onFinishInflate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lb1WgPMmzvuCXakz9_POXNsRdUg(Lcom/android/systemui/screenshot/ScreenshotView;FFLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotTranslateDismissAnimation$14(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z5eh0jm-4kioHFM-WwJd9zXNBIY(Lcom/android/systemui/screenshot/ScreenshotView;FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotActionsShadeAnimation$8(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZDnk05nGnD34sisc_MjFpnnKi0I(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotActionsShadeAnimation$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b5uTZBQem2CWFC7azy4AO9g0ukw(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotActionsShadeAnimation$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cdKWNPOeC3cwXc4mcgzJcqaTplk(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$setChipIntents$10(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eYAwLkXFXqYxzzqs1PoggZMIqWE(Lcom/android/systemui/screenshot/ScreenshotView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$setChipIntents$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$hdrtlcT5UahtZd7SnuT46FHc3B0(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$setChipIntents$9(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwhH2rwDCsypySV9tJoRvXUqSlw(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotDropInAnimation$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGec3qZuq37r_dkWQeXLRobND1w(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->lambda$createScreenshotActionsShadeAnimation$5(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/android/systemui/screenshot/ScreenshotView;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/ScreenshotView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/ScreenshotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/screenshot/ScreenshotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/screenshot/ScreenshotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 113
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 146
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    .line 170
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mResources:Landroid/content/res/Resources;

    .line 172
    sget p2, Lcom/android/systemui/R$dimen;->global_screenshot_x_scale:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCornerSizeX:F

    .line 173
    sget p2, Lcom/android/systemui/R$dimen;->screenshot_dismissal_height_delta:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissDeltaY:F

    .line 177
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const p2, 0x10c000d

    .line 178
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 180
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 181
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 183
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/animation/Animator;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/ScreenshotView;F)F
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->dpToPx(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/view/View;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/ScreenshotView;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/widget/ImageView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mBackgroundProtection:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/ScreenshotView;)Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/content/Context;
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/ScreenshotView;)Landroid/animation/Animator;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method private animateDismissal(Landroid/animation/Animator;)V
    .locals 1

    .line 610
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 611
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissAnimation:Landroid/animation/Animator;

    .line 612
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView$4;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 638
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private static createScreenDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 746
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v0, v1

    iget v1, p2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v0, v1

    .line 747
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    iget v2, p2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    .line 749
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 750
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-eqz p0, :cond_3

    .line 751
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 758
    :cond_0
    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    iget p1, p2, Landroid/graphics/Insets;->left:I

    int-to-float p1, p1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr p1, v2

    int-to-float v0, v0

    div-float v4, p1, v0

    iget p1, p2, Landroid/graphics/Insets;->top:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    int-to-float v1, v1

    div-float v5, p1, v1

    iget p1, p2, Landroid/graphics/Insets;->right:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float v6, p1, v0

    iget p1, p2, Landroid/graphics/Insets;->bottom:I

    int-to-float p1, p1

    mul-float/2addr p1, v2

    div-float v7, p1, v1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;FFFF)V

    .line 764
    iget p1, p2, Landroid/graphics/Insets;->left:I

    if-ltz p1, :cond_2

    iget p1, p2, Landroid/graphics/Insets;->top:I

    if-ltz p1, :cond_2

    iget p1, p2, Landroid/graphics/Insets;->right:I

    if-ltz p1, :cond_2

    iget p1, p2, Landroid/graphics/Insets;->bottom:I

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 767
    :cond_2
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p0, p2, v0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p1

    .line 752
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t create inset drawable, using 0 insets bitmap and insets create degenerate region: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 752
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method private createScreenshotFadeDismissAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 730
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 731
    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x258

    .line 738
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createScreenshotTranslateDismissAnimation()Landroid/animation/AnimatorSet;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 703
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x32

    .line 704
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v2, 0xb7

    .line 705
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 706
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v0, v0, [F

    .line 710
    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 711
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    .line 712
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 713
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    .line 714
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    .line 715
    new-instance v4, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;FF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 723
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 724
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dpToPx(F)F
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x43200000    # 160.0f

    div-float/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$5(Landroid/view/View;)V
    .locals 1

    .line 482
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 483
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 484
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->SHARE:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$6(Landroid/view/View;)V
    .locals 1

    .line 491
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 492
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 493
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->EDIT:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$7(Landroid/view/View;)V
    .locals 1

    .line 498
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 499
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 500
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;->PREVIEW:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    return-void
.end method

.method private synthetic lambda$createScreenshotActionsShadeAnimation$8(FLjava/util/ArrayList;Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 524
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    .line 525
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mBackgroundProtection:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    cmpg-float v0, p3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    div-float p1, p3, p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 528
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    const p1, 0x3f333333    # 0.7f

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    .line 531
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setScaleX(F)V

    .line 532
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 533
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 534
    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    div-float v2, v1, v0

    .line 535
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setScaleX(F)V

    goto :goto_1

    .line 537
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    iget-boolean p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    if-eqz p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 538
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    iget-boolean p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setPivotX(F)V

    .line 539
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 540
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    if-eqz p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result p0

    int-to-float p3, p0

    .line 539
    :goto_4
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setPivotX(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotDropInAnimation$4(FFFLandroid/graphics/PointF;Landroid/graphics/PointF;FLandroid/animation/ValueAnimator;)V
    .locals 3

    .line 376
    invoke-virtual {p7}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p7

    cmpg-float v0, p7, p1

    const/high16 v1, 0x3f800000    # 1.0f

    if-gez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    div-float p1, p7, p1

    .line 379
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 378
    invoke-static {p2, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 380
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 381
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 384
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    :goto_0
    cmpg-float p1, p7, p3

    const/high16 p2, 0x40000000    # 2.0f

    if-gez p1, :cond_1

    .line 388
    iget p1, p4, Landroid/graphics/PointF;->x:F

    iget v0, p5, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    div-float p3, p7, p3

    .line 389
    invoke-interface {v2, p3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p3

    .line 388
    invoke-static {p1, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 390
    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    sub-float/2addr p1, v0

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_1

    .line 392
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    iget p3, p5, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p2

    sub-float/2addr p3, v0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setX(F)V

    .line 394
    :goto_1
    iget p1, p4, Landroid/graphics/PointF;->y:F

    iget p3, p5, Landroid/graphics/PointF;->y:F

    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    .line 395
    invoke-interface {p4, p7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p4

    .line 394
    invoke-static {p1, p3, p4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 396
    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, p2

    sub-float/2addr p1, p4

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setY(F)V

    cmpl-float p1, p7, p6

    if-ltz p1, :cond_3

    .line 399
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    sub-float/2addr p7, p6

    sub-float/2addr v1, p6

    div-float/2addr p7, v1

    invoke-virtual {p1, p7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 400
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getX()F

    move-result p1

    .line 401
    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p3}, Landroid/widget/ImageView;->getY()F

    move-result p3

    .line 402
    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, p2

    sub-float/2addr p3, p5

    invoke-virtual {p4, p3}, Landroid/widget/FrameLayout;->setY(F)V

    .line 403
    iget-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    if-eqz p3, :cond_2

    .line 404
    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    iget-object p4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p1, p4

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 405
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    .line 404
    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setX(F)V

    goto :goto_2

    .line 407
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    :cond_3
    :goto_2
    return-void
.end method

.method private synthetic lambda$createScreenshotFadeDismissAnimation$15(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 732
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    .line 733
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 734
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 735
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 736
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mBackgroundProtection:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotTranslateDismissAnimation$13(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 707
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$createScreenshotTranslateDismissAnimation$14(FFLandroid/animation/ValueAnimator;)V
    .locals 2

    .line 716
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissDeltaY:F

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p3

    const/4 v1, 0x0

    invoke-static {v1, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p3

    .line 717
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    add-float/2addr p1, p3

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 718
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 719
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, p3}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 720
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$1(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 283
    iget p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mNavMode:I

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 284
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 285
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mLeftInset:I

    .line 286
    iget p1, p1, Landroid/graphics/Insets;->right:I

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mRightInset:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mRightInset:I

    iput p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mLeftInset:I

    .line 290
    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setChipIntents$10(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V
    .locals 1

    .line 552
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_EDIT_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 553
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->editTransition:Ljava/util/function/Supplier;

    .line 554
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 553
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->startSharedTransition(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;)V

    return-void
.end method

.method private synthetic lambda$setChipIntents$11(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V
    .locals 1

    .line 557
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_PREVIEW_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 558
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->editTransition:Ljava/util/function/Supplier;

    .line 559
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 558
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->startSharedTransition(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;)V

    return-void
.end method

.method private synthetic lambda$setChipIntents$12()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SMART_ACTION_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 585
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal()V

    return-void
.end method

.method private synthetic lambda$setChipIntents$9(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;Landroid/view/View;)V
    .locals 1

    .line 547
    iget-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_SHARE_TAPPED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 548
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->shareTransition:Ljava/util/function/Supplier;

    .line 549
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 548
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView;->startSharedTransition(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;)V

    return-void
.end method

.method private startSharedTransition(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;)V
    .locals 2

    const/4 v0, 0x1

    .line 688
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    .line 689
    iget-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->action:Landroid/app/Notification$Action;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 692
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotFadeDismissAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 694
    iput-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    .line 695
    iget-object p0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->onCancelRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 696
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 698
    :cond_0
    sget-object p0, Lcom/android/systemui/screenshot/ScreenshotView;->TAG:Ljava/lang/String;

    const-string p1, "Intent cancelled"

    invoke-static {p0, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method animateDismissal()V
    .locals 1

    .line 603
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenshotTranslateDismissAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotView;->animateDismissal(Landroid/animation/Animator;)V

    return-void
.end method

.method createScreenshotActionsShadeAnimation()Landroid/animation/ValueAnimator;
    .locals 6

    .line 473
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 479
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v3, 0x1040786

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$drawable;->ic_screenshot_share:I

    invoke-static {v2, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 481
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->screenshot_edit_label:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->ic_screenshot_edit:I

    invoke-static {v2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 490
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->screenshot_scroll_label:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->ic_screenshot_scroll:I

    invoke-static {v2, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 506
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 510
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 511
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 512
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 514
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    .line 515
    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 v3, 0x3e800000    # 0.25f

    .line 518
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HorizontalScrollView;->setAlpha(F)V

    .line 519
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 520
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 521
    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;FLjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method createScreenshotDropInAnimation(Landroid/graphics/Rect;Z)Landroid/animation/AnimatorSet;
    .locals 17

    move-object/from16 v8, p0

    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 329
    iget-object v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getHitRect(Landroid/graphics/Rect;)V

    .line 332
    iget v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mCornerSizeX:F

    .line 333
    iget-boolean v2, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float v9, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v3, v1, v9

    .line 336
    iget-object v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 337
    iget-object v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 339
    iget-object v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 341
    iget-object v1, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 344
    :cond_1
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 345
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    const-wide/16 v4, 0x85

    .line 346
    invoke-virtual {v13, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 347
    iget-object v2, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda2;

    invoke-direct {v2, v8}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v2, v1, [F

    .line 351
    fill-array-data v2, :array_1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    const-wide/16 v4, 0xd9

    .line 352
    invoke-virtual {v14, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    iget-object v2, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mFastOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 354
    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda3;

    invoke-direct {v2, v8}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 358
    new-instance v5, Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v5, v2, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 359
    new-instance v15, Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    .line 360
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v0

    invoke-direct {v15, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    new-array v0, v1, [F

    .line 367
    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v0, 0x1f4

    .line 368
    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const v4, 0x3eef9db2    # 0.468f

    const v16, 0x3ecccccd    # 0.4f

    const v2, 0x3eef9db2    # 0.468f

    .line 375
    new-instance v6, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda5;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v10, v6

    move-object v6, v15

    move-object v11, v7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;FFFLandroid/graphics/PointF;Landroid/graphics/PointF;F)V

    invoke-virtual {v11, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$2;

    invoke-direct {v0, v8}, Lcom/android/systemui/screenshot/ScreenshotView$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 419
    iget-object v0, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 420
    iget-object v0, v8, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 423
    invoke-virtual {v12, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 424
    invoke-virtual {v12, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 426
    :cond_2
    invoke-virtual {v12, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 429
    :goto_1
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView$3;

    move-object/from16 v1, p1

    invoke-direct {v0, v8, v15, v1, v9}, Lcom/android/systemui/screenshot/ScreenshotView$3;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Landroid/graphics/PointF;Landroid/graphics/Rect;F)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v12

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method getScreenshotPreview()Landroid/view/View;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    return-object p0
.end method

.method init(Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 310
    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mCallbacks:Lcom/android/systemui/screenshot/ScreenshotView$ScreenshotViewCallback;

    return-void
.end method

.method isDismissing()Z
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissAnimation:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isPendingSharedTransition()Z
    .locals 0

    .line 599
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    return p0
.end method

.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 5

    const/4 v0, 0x3

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 209
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 211
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 212
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    const/high16 v2, -0x3ec00000    # -12.0f

    .line 213
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotView;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotView;->dpToPx(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->inset(II)V

    .line 214
    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 215
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 216
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotView;->dpToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/ScreenshotView;->dpToPx(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 217
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 218
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 219
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 221
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mNavMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mLeftInset:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 225
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mRightInset:I

    sub-int p0, v3, p0

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, p0, v4, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 227
    sget-object p0, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 230
    :cond_0
    iget-object p0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p0, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 235
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_static:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Landroid/view/View;

    .line 236
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_preview:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    .line 238
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_actions_container_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    .line 240
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_actions_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    .line 241
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_actions:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    .line 242
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_actions_background:I

    .line 243
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 242
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mBackgroundProtection:Landroid/widget/ImageView;

    .line 244
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_dismiss_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    .line 245
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_flash:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotFlash:Landroid/widget/ImageView;

    .line 246
    sget v0, Lcom/android/systemui/R$id;->global_screenshot_selector:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 247
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    sget v1, Lcom/android/systemui/R$id;->screenshot_share_chip:I

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    sget v1, Lcom/android/systemui/R$id;->screenshot_edit_chip:I

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    sget v1, Lcom/android/systemui/R$id;->screenshot_scroll_chip:I

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScrollChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 251
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/screenshot/ScreenshotView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/ScreenshotView$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/high16 v0, 0x41400000    # 12.0f

    .line 260
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/ScreenshotView;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 261
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v4, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-direct {v2, v3, v4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 264
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 265
    new-instance v2, Landroid/view/TouchDelegate;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-direct {v2, v3, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 270
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 275
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0088

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mNavMode:I

    .line 278
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mOrientationPortrait:Z

    .line 280
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDirectionLTR:Z

    .line 282
    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 294
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 295
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method reset()V
    .locals 6

    .line 646
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 656
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 658
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingSharedTransition:Z

    .line 661
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 662
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 663
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mBackgroundProtection:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 664
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 665
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotStatic:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 666
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 667
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 668
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/android/systemui/R$string;->screenshot_preview_description:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 672
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 673
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {v2, v0}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIsPending(Z)V

    .line 674
    iput-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    .line 675
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 676
    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 679
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 680
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mDismissButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 681
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainer:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v4}, Landroid/widget/HorizontalScrollView;->setTranslationY(F)V

    .line 682
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsContainerBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 683
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stop()V

    return-void
.end method

.method setChipIntents(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V
    .locals 5

    .line 546
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mPendingInteraction:Lcom/android/systemui/screenshot/ScreenshotView$PendingInteraction;

    if-eqz v0, :cond_3

    .line 563
    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotView$5;->$SwitchMap$com$android$systemui$screenshot$ScreenshotView$PendingInteraction:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mEditChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    goto :goto_1

    .line 568
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mShareChip:Lcom/android/systemui/screenshot/ScreenshotActionChip;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->callOnClick()Z

    goto :goto_1

    .line 565
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->callOnClick()Z

    goto :goto_1

    .line 575
    :cond_3
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 577
    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 578
    sget v2, Lcom/android/systemui/R$layout;->global_screenshot_action_chip:I

    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotActionChip;

    .line 580
    iget-object v3, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setText(Ljava/lang/CharSequence;)V

    .line 581
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setIcon(Landroid/graphics/drawable/Icon;Z)V

    .line 582
    iget-object v1, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0}, Lcom/android/systemui/screenshot/ScreenshotView-$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/screenshot/ScreenshotView;)V

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/screenshot/ScreenshotActionChip;->setPendingIntent(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 587
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 588
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mActionsView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 589
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mSmartChips:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method setScreenshot(Landroid/graphics/Bitmap;Landroid/graphics/Insets;)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotPreview:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mResources:Landroid/content/res/Resources;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/screenshot/ScreenshotView;->createScreenDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Insets;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method takePartialScreenshot(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->setOnScreenshotSelected(Ljava/util/function/Consumer;)V

    .line 315
    iget-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 316
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotView;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
