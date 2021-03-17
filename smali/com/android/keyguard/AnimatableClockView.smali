.class public Lcom/android/keyguard/AnimatableClockView;
.super Landroid/widget/TextView;
.source "AnimatableClockView.java"


# static fields
.field private static final FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field private static final FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDozingColor:I

.field private final mDozingWeight:I

.field private mFormat:Ljava/lang/CharSequence;

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

.method public static synthetic $r8$lambda$elsOew1BSkVSXzNpKKdYq26lxsE(Lcom/android/keyguard/AnimatableClockView;IFI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AnimatableClockView;->lambda$setTextStyle$1(IFI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "hh\nmm"

    .line 41
    sput-object v0, Lcom/android/keyguard/AnimatableClockView;->FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "HH\nmm"

    .line 42
    sput-object v0, Lcom/android/keyguard/AnimatableClockView;->FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/AnimatableClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 53
    iput v0, p0, Lcom/android/keyguard/AnimatableClockView;->mLineSpacingScale:F

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    .line 73
    sget-object v0, Lcom/android/systemui/R$styleable;->AnimatableClockView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 76
    :try_start_0
    sget p2, Lcom/android/systemui/R$styleable;->AnimatableClockView_dozeWeight:I

    const/16 p3, 0x64

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingWeight:I

    .line 77
    sget p2, Lcom/android/systemui/R$styleable;->AnimatableClockView_lockScreenWeight:I

    const/16 p3, 0x12c

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenWeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void

    :catchall_0
    move-exception p0

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    throw p0
.end method

.method private static getBestDateTimePattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 180
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    .line 182
    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onMeasure$0()Lkotlin/Unit;
    .locals 0

    .line 113
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 114
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$setTextStyle$1(IFI)V
    .locals 8

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    .line 168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    .line 167
    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/TextAnimator;->setTextStyle(IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method private setTextStyle(IFIZ)V
    .locals 8

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-wide/16 v5, 0x12c

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/TextAnimator;->setTextStyle(IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 166
    :cond_0
    new-instance p4, Lcom/android/keyguard/AnimatableClockView-$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/android/keyguard/AnimatableClockView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AnimatableClockView;IFI)V

    iput-object p4, p0, Lcom/android/keyguard/AnimatableClockView;->mOnTextAnimatorInitialized:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method


# virtual methods
.method animateDoze(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 141
    iget v0, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingWeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenWeight:I

    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_1

    .line 143
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingColor:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenColor:I

    .line 141
    :goto_1
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(IFIZ)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 86
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 87
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/TextAnimator;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 109
    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    if-nez p1, :cond_0

    .line 110
    new-instance p1, Lcom/android/keyguard/TextAnimator;

    .line 111
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p2

    new-instance v0, Lcom/android/keyguard/AnimatableClockView-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AnimatableClockView-$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/AnimatableClockView;)V

    invoke-direct {p1, p2, v0}, Lcom/android/keyguard/TextAnimator;-><init>(Landroid/text/Layout;Lkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mTextAnimator:Lcom/android/keyguard/TextAnimator;

    .line 116
    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mOnTextAnimatorInitialized:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 117
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView;->mOnTextAnimatorInitialized:Ljava/lang/Runnable;

    goto :goto_0

    .line 121
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

    .line 102
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshFormat()V

    return-void
.end method

.method refreshFormat()V
    .locals 2

    .line 173
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v1, Lcom/android/keyguard/AnimatableClockView;->FORMAT_24_HOUR:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/keyguard/AnimatableClockView;->FORMAT_12_HOUR:Ljava/lang/CharSequence;

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    .line 175
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v0, "Hm"

    goto :goto_1

    :cond_1
    const-string v0, "hm"

    :goto_1
    invoke-static {v1, v0}, Lcom/android/keyguard/AnimatableClockView;->getBestDateTimePattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mDescFormat:Ljava/lang/CharSequence;

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->refreshTime()V

    return-void
.end method

.method refreshTime()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 97
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setColors(II)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/android/keyguard/AnimatableClockView;->mDozingColor:I

    .line 137
    iput p2, p0, Lcom/android/keyguard/AnimatableClockView;->mLockScreenColor:I

    return-void
.end method

.method setLineSpacingScale(F)V
    .locals 1

    .line 131
    iput p1, p0, Lcom/android/keyguard/AnimatableClockView;->mLineSpacingScale:F

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    return-void
.end method
