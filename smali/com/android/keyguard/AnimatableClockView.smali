.class public Lcom/android/keyguard/AnimatableClockView;
.super Landroid/widget/TextView;
.source "AnimatableClockView.java"


# static fields
.field private static final DOUBLE_LINE_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field private static final DOUBLE_LINE_FORMAT_24_HOUR:Ljava/lang/CharSequence;

.field private static final SINGLE_LINE_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field private static final SINGLE_LINE_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mChargeAnimationDelay:I

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDozingColor:I

.field private final mDozingWeight:I

.field private mFormat:Ljava/lang/CharSequence;

.field private mIsSingleLine:Z

.field private mLineSpacingScale:F

.field private mLockScreenColor:I

.field private final mLockScreenWeight:I

.field private mOnTextAnimatorInitialized:Ljava/lang/Runnable;

.field private mTextAnimator:Lcom/android/keyguard/TextAnimator;

.field private final mTime:Ljava/util/Calendar;


# direct methods
.method public static synthetic $r8$lambda$8MxYcQHirIhC55-pmn2chVBnluU(Lcom/android/keyguard/AnimatableClockView;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/AnimatableClockView;->lambda$onMeasure$0()Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CxDX5y68djbyWpXtg7_e9r8fGFw(Lcom/android/keyguard/AnimatableClockView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/AnimatableClockView;->lambda$animateCharge$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ioWa6O7gZEqZk9x8NZMU7m2t0b0(Lcom/android/keyguard/AnimatableClockView;IFLjava/lang/Integer;JJLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/keyguard/AnimatableClockView;->lambda$setTextStyle$2(IFLjava/lang/Integer;JJLjava/lang/Runnable;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh\nmm"

    .line 42
    sput-object v0, Lcom/android/keyguard/AnimatableClockView;->DOUBLE_LINE_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "HH\nmm"

    .line 43
    sput-object v0, Lcom/android/keyguard/AnimatableClockView;->DOUBLE_LINE_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    const-string v0, "h:mm"

    .line 44
    sput-object v0, Lcom/android/keyguard/AnimatableClockView;->SINGLE_LINE_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "HH:mm"

    .line 45
    sput-object v0, Lcom/android/keyguard/AnimatableClockView;->SINGLE_LINE_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 58
    iput v0, p0, Lcom/android/keyguard/AnimatableClockView;->mLineSpacingScale:F

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/android/keyguard/AnimatableClockView;->mChargeAnimationDelay:I

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    .line 81
    sget-object v1, Lcom/android/systemui/R$styleable;->AnimatableClockView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 84
    :try_start_0
    sget v2, Lcom/android/systemui/R$styleable;->AnimatableClockView_dozeWeight:I

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingWeight:I

    .line 85
    sget v2, Lcom/android/systemui/R$styleable;->AnimatableClockView_lockScreenWeight:I

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenWeight:I

    .line 86
    sget v2, Lcom/android/systemui/R$styleable;->AnimatableClockView_chargeAnimationDelay:I

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/AnimatableClockView;->mChargeAnimationDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    sget-object v1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/16 p2, 0x20

    .line 95
    :try_start_1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/AnimatableClockView;->mIsSingleLine:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void

    :catchall_0
    move-exception p0

    .line 97
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    throw p0

    :catchall_1
    move-exception p0

    .line 89
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    throw p0
.end method

.method private static getBestDateTimePattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 253
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    .line 255
    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$animateCharge$1(Z)V
    .locals 10

    if-eqz p1, :cond_0

    .line 180
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingWeight:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenWeight:I

    :goto_0
    move v1, p1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x3e8

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    .line 179
    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IFLjava/lang/Integer;ZJJLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onMeasure$0()Lkotlin/Unit;
    .locals 0

    .line 132
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 133
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$setTextStyle$2(IFLjava/lang/Integer;JJLjava/lang/Runnable;)V
    .locals 11

    move-object v0, p0

    .line 230
    iget-object v0, v0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/android/keyguard/TextAnimator;->setTextStyle(IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V

    return-void
.end method

.method private setTextStyle(IFLjava/lang/Integer;ZJJLjava/lang/Runnable;)V
    .locals 12

    move-object v10, p0

    .line 224
    iget-object v0, v10, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    if-eqz v0, :cond_0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    .line 225
    invoke-virtual/range {v0 .. v10}, Lcom/android/keyguard/TextAnimator;->setTextStyle(IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V

    goto :goto_0

    .line 229
    :cond_0
    new-instance v11, Lcom/android/keyguard/AnimatableClockView$$ExternalSyntheticLambda0;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/AnimatableClockView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AnimatableClockView;IFLjava/lang/Integer;JJLjava/lang/Runnable;)V

    iput-object v11, v10, Lcom/android/keyguard/AnimatableClockView;->mOnTextAnimatorInitialized:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method


# virtual methods
.method animateCharge(Z)V
    .locals 11

    .line 175
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/keyguard/TextAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 179
    :cond_0
    new-instance v10, Lcom/android/keyguard/AnimatableClockView$$ExternalSyntheticLambda1;

    invoke-direct {v10, p0, p1}, Lcom/android/keyguard/AnimatableClockView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/AnimatableClockView;Z)V

    if-eqz p1, :cond_1

    .line 187
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenWeight:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingWeight:I

    :goto_0
    move v2, p1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x1f4

    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mChargeAnimationDelay:I

    int-to-long v8, p1

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IFLjava/lang/Integer;ZJJLjava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method animateDisappear()V
    .locals 11

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-wide/16 v6, 0x43

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    .line 164
    invoke-direct/range {v1 .. v10}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IFLjava/lang/Integer;ZJJLjava/lang/Runnable;)V

    return-void
.end method

.method animateDoze(ZZ)V
    .locals 11

    if-eqz p1, :cond_0

    .line 197
    iget v0, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingWeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenWeight:I

    :goto_0
    move v2, v0

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    .line 199
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingColor:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenColor:I

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v5, p2

    .line 197
    invoke-direct/range {v1 .. v10}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IFLjava/lang/Integer;ZJJLjava/lang/Runnable;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 111
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/TextAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 128
    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez p1, :cond_0

    .line 129
    new-instance p1, Lcom/android/keyguard/TextAnimator;

    .line 130
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    new-instance v0, Lcom/android/keyguard/AnimatableClockView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/AnimatableClockView;)V

    invoke-direct {p1, p2, v0}, Lcom/android/keyguard/TextAnimator;-><init>(Landroid/text/Layout;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    .line 135
    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mOnTextAnimatorInitialized:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 136
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mOnTextAnimatorInitialized:Ljava/lang/Runnable;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/TextAnimator;->updateLayout(Landroid/text/Layout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void
.end method

.method refreshFormat()V
    .locals 2

    .line 237
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 238
    iget-boolean v1, p0, Lcom/android/keyguard/AnimatableClockView;->mIsSingleLine:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 239
    sget-object v1, Lcom/android/keyguard/AnimatableClockView;->SINGLE_LINE_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 241
    sget-object v1, Lcom/android/keyguard/AnimatableClockView;->DOUBLE_LINE_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 243
    sget-object v1, Lcom/android/keyguard/AnimatableClockView;->SINGLE_LINE_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    goto :goto_0

    .line 245
    :cond_2
    sget-object v1, Lcom/android/keyguard/AnimatableClockView;->DOUBLE_LINE_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    .line 248
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v0, "Hm"

    goto :goto_1

    :cond_3
    const-string v0, "hm"

    :goto_1
    invoke-static {v1, v0}, Lcom/android/keyguard/AnimatableClockView;->getBestDateTimePattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mDescFormat:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    return-void
.end method

.method refreshTime()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setColors(II)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingColor:I

    .line 156
    iput p2, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenColor:I

    return-void
.end method

.method setLineSpacingScale(F)V
    .locals 1

    .line 150
    iput p1, p0, Lcom/android/keyguard/AnimatableClockView;->mLineSpacingScale:F

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method
