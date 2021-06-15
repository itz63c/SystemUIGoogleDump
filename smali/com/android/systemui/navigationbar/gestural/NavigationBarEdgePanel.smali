.class public Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;
.super Landroid/view/View;
.source "NavigationBarEdgePanel.java"

# interfaces
.implements Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;


# static fields
.field private static final CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;",
            ">;"
        }
    .end annotation
.end field

.field private static final RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private final mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private final mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

.field private mAngleOffset:F

.field private mArrowColor:I

.field private final mArrowColorAnimator:Landroid/animation/ValueAnimator;

.field private mArrowColorDark:I

.field private mArrowColorLight:I

.field private final mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

.field private final mArrowLength:F

.field private mArrowPaddingEnd:I

.field private final mArrowPath:Landroid/graphics/Path;

.field private mArrowStartColor:I

.field private final mArrowThickness:F

.field private mArrowsPointLeft:Z

.field private mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field private final mBaseTranslation:F

.field private mCurrentAngle:F

.field private mCurrentArrowColor:I

.field private mCurrentTranslation:F

.field private final mDensity:F

.field private mDesiredAngle:F

.field private mDesiredTranslation:F

.field private mDesiredVerticalTranslation:F

.field private mDisappearAmount:F

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mDragSlopPassed:Z

.field private mFingerOffset:I

.field private mIsDark:Z

.field private mIsLeftPanel:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mLeftInset:I

.field private mMaxTranslation:F

.field private mMinArrowPosition:I

.field private final mMinDeltaForSwitch:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mPreviousTouchTranslation:F

.field private mProtectionColor:I

.field private mProtectionColorDark:I

.field private mProtectionColorLight:I

.field private final mProtectionPaint:Landroid/graphics/Paint;

.field private mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

.field private final mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mRightInset:I

.field private final mSamplingRect:Landroid/graphics/Rect;

.field private mScreenSize:I

.field private mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

.field private mShowProtection:Z

.field private mStartX:F

.field private mStartY:F

.field private final mSwipeThreshold:F

.field private mTotalTouchDelta:F

.field private final mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTriggerBack:Z

.field private final mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalTranslation:F

.field private final mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mVibrationTime:J

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$aq10G-tcKdVPx-k3ZBloEi5A3mg(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->lambda$new$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kTvcq9sXrew5EDL5lph2S5dZP_A(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->lambda$triggerBack$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$wNbO9O8VfymmWe7_8zOnZr0uaVo(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->lambda$new$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zK50LyiR1rGmlp95uQShg0o1Ik8(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->lambda$triggerBack$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 126
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    .line 229
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;

    const-string v1, "currentAngle"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 242
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$3;

    const-string v1, "currentTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 255
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$4;

    const-string/jumbo v1, "verticalTranslation"

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 271
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    .line 156
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    .line 157
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 170
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mShowProtection:Z

    .line 180
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    .line 218
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$1;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 273
    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    .line 274
    const-class v2, Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/VibratorHelper;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    .line 276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDensity:F

    const/high16 v2, 0x42000000    # 32.0f

    .line 278
    invoke-direct {p0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    const/high16 v3, 0x41900000    # 18.0f

    .line 279
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    const/high16 v3, 0x40200000    # 2.5f

    .line 280
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowThickness:F

    .line 281
    invoke-direct {p0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->dp(F)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    .line 283
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 284
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    const/4 v2, 0x1

    .line 285
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 286
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 287
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 289
    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x78

    .line 290
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 291
    new-instance v6, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v4, [F

    .line 297
    fill-array-data v4, :array_1

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v5, 0x64

    .line 298
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 299
    sget-object v5, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 305
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_ANGLE:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v4, p0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 307
    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v6, 0x43fa0000    # 500.0f

    .line 308
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    .line 309
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 310
    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const v8, 0x44bb8000    # 1500.0f

    .line 311
    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    .line 312
    invoke-virtual {v7, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    const/high16 v7, 0x42b40000    # 90.0f

    .line 313
    invoke-virtual {v6, v7}, Landroidx/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    .line 314
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMaxValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 316
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v4, p0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 318
    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 319
    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    const/high16 v6, 0x3f400000    # 0.75f

    .line 320
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 321
    new-instance v7, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v7}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v9, 0x43e10000    # 450.0f

    .line 322
    invoke-virtual {v7, v9}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    .line 323
    invoke-virtual {v7, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 324
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 325
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v5, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->CURRENT_VERTICAL_TRANSLATION:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v4, p0, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 327
    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 329
    invoke-virtual {v5, v8}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    .line 330
    invoke-virtual {v5, v6}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v5

    .line 327
    invoke-virtual {v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 332
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    add-float/2addr v3, v0

    .line 333
    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->loadDimens()V

    .line 336
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->loadColors(Landroid/content/Context;)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$dimen;->navigation_edge_action_drag_threshold:I

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSwipeThreshold:F

    const/16 p1, 0x8

    .line 341
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 343
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_0

    move v1, v2

    .line 344
    :cond_0
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$5;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Z)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper$SamplingCallback;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    .line 361
    invoke-virtual {p1, v2}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->setWindowVisible(Z)V

    xor-int/lit8 p1, v1, 0x1

    .line 362
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mShowProtection:Z

    return-void

    nop

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

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentAngle(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getCurrentAngle()F

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getCurrentTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;F)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)F
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getVerticalTranslation()F

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;ZZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setIsDark(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)Landroid/graphics/Rect;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method private adjustSamplingRectToBoundingBox()V
    .locals 6

    .line 417
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    .line 418
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v1, :cond_2

    .line 421
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    .line 422
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_2

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    sub-float/2addr v0, v1

    .line 429
    :cond_2
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 430
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 433
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v1

    const/high16 v3, 0x42600000    # 56.0f

    .line 434
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v2

    .line 435
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v4, :cond_4

    sub-float/2addr v0, v1

    .line 439
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    add-float/2addr v4, v5

    div-float v2, v3, v2

    sub-float/2addr v4, v2

    .line 440
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    float-to-int v0, v0

    float-to-int v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    add-float/2addr v5, v1

    float-to-int v1, v5

    int-to-float v5, v4

    add-float/2addr v5, v3

    float-to-int v3, v5

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 444
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method private calculatePath(FF)Landroid/graphics/Path;
    .locals 3

    .line 585
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_0

    neg-float p1, p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f400000    # 0.75f

    .line 588
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisappearAmount:F

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    mul-float/2addr p1, v0

    mul-float/2addr p2, v0

    .line 591
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 594
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    neg-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 595
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private cancelBack()V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->cancelBack()V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSetGoneEndListener:Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 662
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private dp(F)F
    .locals 0

    .line 871
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDensity:F

    mul-float/2addr p0, p1

    return p0
.end method

.method private getCurrentAngle()F
    .locals 0

    .line 599
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    return p0
.end method

.method private getCurrentTranslation()F
    .locals 0

    .line 603
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    return p0
.end method

.method private getStaticArrowWidth()F
    .locals 1

    const/high16 v0, 0x42600000    # 56.0f

    .line 573
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getVerticalTranslation()F
    .locals 0

    .line 822
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    return p0
.end method

.method private handleMoveEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 691
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Landroid/util/MathUtils;->abs(F)F

    move-result v1

    .line 692
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartY:F

    sub-float/2addr p1, v2

    .line 693
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    sub-float v2, v1, v2

    .line 694
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 695
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-nez v3, :cond_0

    .line 696
    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    add-float/2addr v3, v2

    iput v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    goto :goto_0

    .line 698
    :cond_0
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    .line 701
    :cond_1
    :goto_0
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 704
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    const-string v3, "NoBackGesture"

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSwipeThreshold:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 705
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 706
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 707
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibrationTime:J

    .line 710
    iput v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 711
    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    const-string v2, "set mTriggerBack=true"

    .line 714
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0, v6, v6}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 720
    :cond_2
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    cmpl-float v7, v1, v2

    const/high16 v8, 0x40800000    # 4.0f

    if-lez v7, :cond_3

    sub-float/2addr v1, v2

    .line 722
    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mScreenSize:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float/2addr v1, v7

    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 723
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMaxTranslation:F

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    sub-float/2addr v2, v7

    mul-float/2addr v1, v2

    add-float/2addr v7, v1

    goto :goto_1

    :cond_3
    sub-float v1, v2, v1

    div-float/2addr v1, v2

    .line 728
    invoke-static {v1}, Landroid/util/MathUtils;->saturate(F)F

    move-result v1

    .line 729
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR_APPEAR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBaseTranslation:F

    div-float v7, v2, v8

    mul-float/2addr v1, v7

    sub-float v7, v2, v1

    .line 734
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 737
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    cmpl-float v2, v2, v9

    const/4 v9, 0x0

    if-lez v2, :cond_5

    .line 738
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    move v1, v9

    .line 742
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    invoke-virtual {v2, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 743
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 744
    iget-object v10, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 745
    invoke-static {v2, v10}, Landroid/util/MathUtils;->mag(FF)F

    move-result v10

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    mul-float/2addr v10, v8

    .line 746
    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 747
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v8, v2

    iput v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 748
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v2, :cond_6

    iget-boolean v10, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v10, :cond_7

    :cond_6
    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v2, :cond_8

    :cond_7
    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v8, v2

    .line 749
    iput v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 753
    :cond_8
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v8, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    sub-float v8, v0, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v8, v10

    cmpl-float v2, v2, v8

    if-lez v2, :cond_9

    goto :goto_3

    :cond_9
    move v9, v1

    .line 756
    :goto_3
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eq v1, v9, :cond_a

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set mTriggerBack="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalTouchDelta="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mMinDeltaForSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinDeltaForSwitch:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", yOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mStartX="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_a
    invoke-direct {p0, v9, v6}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 766
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    if-nez v0, :cond_b

    move v7, v4

    goto :goto_4

    .line 768
    :cond_b
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v1, :cond_d

    :cond_c
    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    if-nez v0, :cond_e

    .line 772
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->getStaticArrowWidth()F

    move-result v0

    sub-float/2addr v7, v0

    .line 774
    :cond_e
    :goto_4
    invoke-direct {p0, v7, v6}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 775
    invoke-direct {p0, v6}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 777
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v10

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    sub-float/2addr v0, v1

    .line 779
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x41700000    # 15.0f

    mul-float/2addr v2, v0

    div-float/2addr v1, v2

    .line 778
    invoke-static {v1, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    .line 781
    sget-object v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->RUBBER_BAND_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v1, v0

    .line 782
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    mul-float/2addr v1, p1

    .line 783
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateSamplingRect()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 292
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowStartColor:I

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColor:I

    .line 293
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 292
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 301
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisappearAmount:F

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$triggerBack$2()V
    .locals 1

    const/16 v0, 0x8

    .line 636
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$triggerBack$3()V
    .locals 4

    .line 629
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v1, 0x41000000    # 8.0f

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    const/4 v0, 0x1

    .line 630
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 632
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBackSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 634
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    const/high16 v3, 0x42000000    # 32.0f

    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->dp(F)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 635
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V

    .line 636
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 637
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private loadColors(Landroid/content/Context;)V
    .locals 3

    .line 541
    sget v0, Lcom/android/systemui/R$attr;->darkIconTheme:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v0

    .line 542
    sget v1, Lcom/android/systemui/R$attr;->lightIconTheme:I

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    .line 543
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 544
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 545
    sget p1, Lcom/android/systemui/R$attr;->singleToneColor:I

    invoke-static {v2, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorLight:I

    .line 546
    invoke-static {v1, p1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorDark:I

    .line 547
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorLight:I

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorDark:I

    .line 548
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorLight:I

    const/4 p1, 0x0

    .line 549
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method private loadDimens()V
    .locals 2

    .line 528
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 529
    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    .line 530
    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_arrow_min_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinArrowPosition:I

    .line 531
    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_finger_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFingerOffset:I

    return-void
.end method

.method private polarToCartX(F)F
    .locals 0

    float-to-double p0, p1

    .line 577
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private polarToCartY(F)F
    .locals 0

    float-to-double p0, p1

    .line 581
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private resetOnDown()V
    .locals 4

    .line 667
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 669
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 671
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowDisappearAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 672
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 673
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegularTranslationSpring:Landroidx/dynamicanimation/animation/SpringForce;

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    const-string v1, "NoBackGesture"

    const-string v2, "reset mTriggerBack=false"

    .line 676
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 678
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setTriggerBack(ZZ)V

    .line 679
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredTranslation(FZ)V

    .line 680
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    .line 681
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 682
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPreviousTouchTranslation:F

    .line 683
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTotalTouchDelta:F

    const-wide/16 v2, 0x0

    .line 684
    iput-wide v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibrationTime:J

    .line 685
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setDesiredVerticalTransition(FZ)V

    return-void
.end method

.method private setCurrentAngle(F)V
    .locals 0

    .line 866
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    .line 867
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentArrowColor(I)V
    .locals 1

    .line 567
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentArrowColor:I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 569
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setCurrentTranslation(F)V
    .locals 0

    .line 837
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    .line 838
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private setDesiredTranslation(FZ)V
    .locals 1

    .line 826
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 827
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredTranslation:F

    if-nez p2, :cond_0

    .line 829
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentTranslation(F)V

    goto :goto_0

    .line 831
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDesiredVerticalTransition(FZ)V
    .locals 1

    .line 805
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 806
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredVerticalTranslation:F

    if-nez p2, :cond_0

    .line 808
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setVerticalTranslation(F)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p2, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 812
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method private setIsDark(ZZ)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    .line 379
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateIsDark(Z)V

    return-void
.end method

.method private setTriggerBack(ZZ)V
    .locals 1

    .line 842
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eq v0, p1, :cond_0

    .line 843
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    .line 844
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 845
    invoke-direct {p0, p2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 848
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method private setVerticalTranslation(F)V
    .locals 0

    .line 817
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    .line 818
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private triggerBack()V
    .locals 7

    .line 607
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;->triggerBack()V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 610
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 614
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    .line 616
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibrationTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x190

    cmp-long v0, v3, v5

    if-ltz v0, :cond_3

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/VibratorHelper;->vibrate(I)V

    .line 621
    :cond_3
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    const/high16 v2, -0x3f800000    # -4.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    const/high16 v2, -0x3f000000    # -8.0f

    const/high16 v3, 0x41000000    # 8.0f

    sub-float/2addr v0, v3

    .line 622
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    .line 623
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateAngle(Z)V

    .line 627
    :cond_4
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;)V

    .line 639
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 640
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTranslationAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$6;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel$6;-><init>(Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    goto :goto_1

    .line 652
    :cond_5
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private updateAngle(Z)V
    .locals 3

    .line 853
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz v0, :cond_0

    const/high16 v1, 0x42600000    # 56.0f

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleOffset:F

    add-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42b40000    # 90.0f

    .line 854
    :goto_0
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredAngle:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    .line 856
    invoke-direct {p0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentAngle(F)V

    goto :goto_2

    .line 858
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAppearForce:Landroidx/dynamicanimation/animation/SpringForce;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleDisappearForce:Landroidx/dynamicanimation/animation/SpringForce;

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 859
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mAngleAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 861
    :goto_2
    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDesiredAngle:F

    :cond_3
    return-void
.end method

.method private updateArrowDirection()V
    .locals 1

    .line 536
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowsPointLeft:Z

    .line 537
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateIsDark(Z)V
    .locals 2

    .line 554
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorDark:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColorLight:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionColor:I

    .line 555
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 556
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsDark:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorDark:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorLight:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColor:I

    .line 557
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    if-nez p1, :cond_2

    .line 559
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColor:I

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->setCurrentArrowColor(I)V

    goto :goto_2

    .line 561
    :cond_2
    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentArrowColor:I

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowStartColor:I

    .line 562
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowColorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method private updatePosition(F)V
    .locals 3

    .line 788
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mFingerOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 789
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMinArrowPosition:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 790
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p1, v1

    float-to-int p1, p1

    .line 791
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 792
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateSamplingRect()V

    return-void
.end method

.method private updateSamplingRect()V
    .locals 5

    .line 796
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 797
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLeftInset:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRightInset:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    .line 798
    :goto_0
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v3, v2

    .line 799
    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v0, v1

    .line 800
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v2, v1, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 801
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->adjustSamplingRectToBoundingBox()V

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 495
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 496
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updateArrowDirection()V

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->loadDimens()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 368
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 502
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentTranslation:F

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowThickness:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 503
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 505
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 506
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVerticalTranslation:F

    add-float/2addr v1, v2

    .line 504
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 509
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->polarToCartX(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v0, v1

    .line 510
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mCurrentAngle:F

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->polarToCartY(F)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowLength:F

    mul-float/2addr v1, v2

    .line 511
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->calculatePath(FF)Landroid/graphics/Path;

    move-result-object v0

    .line 512
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mShowProtection:Z

    if-eqz v1, :cond_1

    .line 513
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mProtectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 516
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 522
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 524
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mArrowPaddingEnd:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mMaxTranslation:F

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 449
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 450
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "NoBackGesture"

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "NavigationBarEdgePanel ACTION_CANCEL"

    .line 483
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->cancelBack()V

    .line 486
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    .line 487
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 488
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 465
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->handleMoveEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 469
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NavigationBarEdgePanel ACTION_UP, mTriggerBack="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mTriggerBack:Z

    if-eqz p1, :cond_4

    .line 473
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->triggerBack()V

    goto :goto_0

    .line 475
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->cancelBack()V

    .line 477
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->stop()V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 479
    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 455
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDragSlopPassed:Z

    .line 456
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->resetOnDown()V

    .line 457
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartX:F

    .line 458
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mStartY:F

    .line 459
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 460
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->updatePosition(F)V

    .line 461
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 462
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method public setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    return-void
.end method

.method public setDisplaySize(Landroid/graphics/Point;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mDisplaySize:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mScreenSize:I

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 392
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLeftInset:I

    .line 393
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mRightInset:I

    return-void
.end method

.method public setIsLeftPanel(Z)V
    .locals 0

    .line 384
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mIsLeftPanel:Z

    .line 385
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    const/16 p1, 0x33

    goto :goto_0

    :cond_0
    const/16 p1, 0x35

    .line 387
    :goto_0
    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-void
.end method

.method public setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 409
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
