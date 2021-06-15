.class public Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
.super Ljava/lang/Object;
.source "KeyguardClockPositionAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    }
.end annotation


# static fields
.field private static CLOCK_HEIGHT_WEIGHT:F = 0.7f


# instance fields
.field private mBurnInPreventionOffsetX:I

.field private mBurnInPreventionOffsetY:I

.field private mBurnInPreventionOffsetYLargeClock:I

.field private mBypassEnabled:Z

.field private mClockNotificationsMargin:I

.field private mClockPreferredY:I

.field private mContainerTopPadding:I

.field private mCutoutTopInset:I

.field private mDarkAmount:F

.field private mEmptyDragAmount:F

.field private mHasCustomClock:Z

.field private mHasVisibleNotifs:Z

.field private mHeight:I

.field private mIsSplitShade:Z

.field private mKeyguardStatusHeight:I

.field private mLockScreenMode:I

.field private mMaxShadeBottom:I

.field private mMinTopMargin:I

.field private mNotificationStackHeight:I

.field private mPanelExpansion:F

.field private mQsExpansion:F

.field private mUnlockedStackScrollerPadding:I

.field private mUserSwitchHeight:I

.field private mUserSwitchPreferredY:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    return-void
.end method

.method private burnInPreventionOffsetX()F
    .locals 2

    .line 343
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mLockScreenMode:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 344
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    .line 347
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    invoke-static {p0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method private burnInPreventionOffsetY()F
    .locals 2

    .line 334
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    .line 335
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mLockScreenMode:I

    if-eqz v1, :cond_0

    .line 336
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetYLargeClock:I

    :cond_0
    mul-int/lit8 p0, v0, 0x2

    const/4 v1, 0x0

    .line 339
    invoke-static {p0, v1}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    move-result p0

    sub-int/2addr p0, v0

    int-to-float p0, p0

    return p0
.end method

.method private getClockAlpha(I)F
    .locals 2

    int-to-float p1, p1

    .line 327
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 328
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mQsExpansion:F

    sub-float v0, v1, v0

    mul-float/2addr p1, v0

    .line 329
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 330
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {p1, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private getClockY(FF)I
    .locals 5

    .line 282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 283
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 284
    invoke-static {v1, v0}, Landroid/util/MathUtils;->max(FF)F

    move-result v0

    .line 286
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedPreferredClockY()I

    move-result v2

    int-to-float v2, v2

    .line 287
    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v3, v3

    int-to-float v3, v3

    .line 290
    sget-object v4, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 291
    invoke-static {v3, v2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    .line 292
    invoke-static {v3, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 294
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-nez v0, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 296
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mLockScreenMode:I

    if-eqz v0, :cond_3

    .line 299
    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetYLargeClock:I

    int-to-float v0, p1

    sub-float v0, v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    int-to-float v4, v3

    cmpg-float v0, v0, v4

    if-gez v0, :cond_2

    int-to-float v0, v3

    int-to-float p1, p1

    sub-float p1, v2, p1

    sub-float v1, v0, p1

    .line 302
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetY()F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr p1, v1

    .line 304
    :cond_3
    invoke-static {v2, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private getExpandedPreferredClockY()I
    .locals 1

    .line 248
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mLockScreenMode:I

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    add-int/2addr v0, p0

    return v0

    .line 251
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    goto :goto_0

    .line 252
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result p0

    :goto_0
    return p0
.end method

.method private getMaxClockY()I
    .locals 2

    .line 244
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    sub-int/2addr v0, p0

    return v0
.end method

.method private getStackScrollerPadding(I)I
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_0

    .line 223
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    return p0

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    if-eqz v0, :cond_1

    return p1

    .line 227
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getUserSwitcherY(F)I
    .locals 3

    .line 308
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchPreferredY:I

    int-to-float v0, v0

    .line 309
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    neg-int v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 312
    sget-object v2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 313
    invoke-static {v1, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    .line 315
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method public getExpandedClockPosition()I
    .locals 4

    .line 261
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    sub-int/2addr v0, v1

    .line 262
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 264
    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->CLOCK_HEIGHT_WEIGHT:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    int-to-float v2, v1

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    int-to-float v0, v1

    .line 272
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMaxClockY()I

    move-result p0

    int-to-float p0, p0

    cmpl-float v1, v0, p0

    if-lez v1, :cond_1

    move v0, p0

    :cond_1
    float-to-int p0, v0

    return p0
.end method

.method public getMinStackScrollerPadding()F
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    int-to-float p0, p0

    goto :goto_0

    .line 240
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    :goto_0
    return p0
.end method

.method public loadDimens(Landroid/content/res/Resources;)V
    .locals 1

    .line 164
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_clock_notifications_margin:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockNotificationsMargin:I

    .line 167
    sget v0, Lcom/android/systemui/R$dimen;->keyguard_clock_top_margin:I

    .line 168
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    .line 169
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_x:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetX:I

    .line 171
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetY:I

    .line 173
    sget v0, Lcom/android/systemui/R$dimen;->burn_in_prevention_offset_y_large_clock:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBurnInPreventionOffsetYLargeClock:I

    return-void
.end method

.method public onLockScreenModeChanged(I)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mLockScreenMode:I

    return-void
.end method

.method public run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V
    .locals 4

    .line 208
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v0

    .line 209
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    .line 210
    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getUserSwitcherY(F)I

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 211
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v2

    iput v2, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockYFullyDozing:I

    .line 213
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockAlpha(I)F

    move-result v2

    iput v2, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    .line 214
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getStackScrollerPadding(I)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    goto :goto_0

    .line 216
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getClockY(FF)I

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    add-int/2addr v0, v2

    :goto_0
    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    const/4 v0, 0x0

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->burnInPreventionOffsetX()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    .line 218
    invoke-static {}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInScale()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    sub-float p0, v1, p0

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    return-void
.end method

.method public setup(IIIFIIIIIZZFFZIFIZ)V
    .locals 3

    move-object v0, p0

    move v1, p7

    .line 186
    iget v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mContainerTopPadding:I

    invoke-static {v2, p7}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, p1

    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMinTopMargin:I

    move v2, p2

    .line 188
    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mMaxShadeBottom:I

    move v2, p3

    .line 189
    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mNotificationStackHeight:I

    move v2, p4

    .line 190
    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mPanelExpansion:F

    move v2, p5

    .line 191
    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHeight:I

    move v2, p6

    .line 192
    iput v2, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mKeyguardStatusHeight:I

    .line 193
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchHeight:I

    move v1, p8

    .line 194
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mClockPreferredY:I

    move v1, p9

    .line 195
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUserSwitchPreferredY:I

    move v1, p10

    .line 196
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasCustomClock:Z

    move v1, p11

    .line 197
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mHasVisibleNotifs:Z

    move v1, p12

    .line 198
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mDarkAmount:F

    move/from16 v1, p13

    .line 199
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mEmptyDragAmount:F

    move/from16 v1, p14

    .line 200
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mBypassEnabled:Z

    move/from16 v1, p15

    .line 201
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mUnlockedStackScrollerPadding:I

    move/from16 v1, p16

    .line 202
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mQsExpansion:F

    move/from16 v1, p17

    .line 203
    iput v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mCutoutTopInset:I

    move/from16 v1, p18

    .line 204
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->mIsSplitShade:Z

    return-void
.end method
