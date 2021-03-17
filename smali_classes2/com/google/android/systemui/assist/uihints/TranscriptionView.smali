.class public Lcom/google/android/systemui/assist/uihints/TranscriptionView;
.super Landroid/widget/TextView;
.source "TranscriptionView.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/TranscriptionController$TranscriptionSpaceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;,
        Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;
    }
.end annotation


# static fields
.field private static final INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;


# instance fields
.field private final BUMPER_DISTANCE_END_PX:F

.field private final BUMPER_DISTANCE_START_PX:F

.field private final FADE_DISTANCE_END_PX:F

.field private final FADE_DISTANCE_START_PX:F

.field private final TEXT_COLOR_DARK:I

.field private final TEXT_COLOR_LIGHT:I

.field private mCardVisible:Z

.field private mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

.field private mDisplayWidthPx:I

.field private mHasDarkBackground:Z

.field private mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRequestedTextColor:I

.field private mStops:[F

.field private mTranscriptionAnimation:Landroid/animation/ValueAnimator;

.field private mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

.field private mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

.field private mVisibilityAnimators:Landroid/animation/AnimatorSet;


# direct methods
.method public static synthetic $r8$lambda$Vp_D3LmZ9KP_rj5nPny1ovUjkXk(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->lambda$hide$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 64
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    .line 83
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    const/4 p2, 0x0

    .line 84
    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 p3, 0x0

    .line 87
    iput-boolean p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    .line 88
    iput-boolean p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mCardVisible:Z

    .line 90
    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    .line 92
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mMatrix:Landroid/graphics/Matrix;

    .line 94
    iput p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    .line 111
    new-instance p3, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-direct {p3, p0, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;)V

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    .line 113
    new-instance p2, Lcom/android/systemui/assist/DeviceConfigHelper;

    invoke-direct {p2}, Lcom/android/systemui/assist/DeviceConfigHelper;-><init>()V

    invoke-virtual {p0, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->initializeDeviceConfigHelper(Lcom/android/systemui/assist/DeviceConfigHelper;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->zerostate_icon_left_margin:I

    .line 116
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->zerostate_icon_tap_padding:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_START_PX:F

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->keyboard_icon_right_margin:I

    .line 119
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->keyboard_icon_tap_padding:I

    .line 120
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_END_PX:F

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->zerostate_icon_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_START_PX:F

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$dimen;->keyboard_icon_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_END_PX:F

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$color;->transcription_text_dark:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_DARK:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->transcription_text_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_LIGHT:I

    .line 127
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateDisplayWidth()V

    .line 129
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setHasDarkBackground(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/assist/uihints/TranscriptionView;F)F
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getFullyVisibleDistance(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    return p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)J
    .locals 2

    .line 50
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getFadeInDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600()Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->INTERPOLATOR_SCROLL:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method private getDurationFastMs()J
    .locals 3

    .line 405
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_transcription_duration_per_px_fast"

    const-wide/16 v1, 0x3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDurationMaxMs()J
    .locals 3

    .line 410
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_transcription_max_duration"

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDurationMinMs()J
    .locals 3

    .line 415
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_transcription_min_duration"

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getDurationRegularMs()J
    .locals 3

    .line 400
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_transcription_duration_per_px_regular"

    const-wide/16 v1, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFadeInDurationMs()J
    .locals 3

    .line 420
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    const-string v0, "assist_transcription_fade_in_duration"

    const-wide/16 v1, 0x32

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/assist/DeviceConfigHelper;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFullyVisibleDistance(F)F
    .locals 5

    .line 364
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    int-to-float v1, v0

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_END_PX:F

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_START_PX:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_END_PX:F

    add-float/2addr v3, v4

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_START_PX:F

    add-float/2addr v3, p0

    sub-float/2addr v1, v3

    cmpg-float p0, p1, v1

    if-gez p0, :cond_0

    int-to-float p0, v0

    sub-float/2addr p0, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    int-to-float p0, v0

    sub-float/2addr p0, p1

    sub-float/2addr p0, v4

    sub-float/2addr p0, v2

    return p0
.end method

.method static interpolate(JJF)F
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sub-long/2addr p2, p0

    long-to-float p2, p2

    mul-float/2addr p2, p4

    long-to-float p0, p0

    add-float/2addr p2, p0

    return p2
.end method

.method private synthetic lambda$hide$0()V
    .locals 1

    const/16 v0, 0x8

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 208
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 210
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->resetTranscription()V

    .line 211
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetTranscription()V
    .locals 2

    const-string v0, ""

    .line 395
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    .line 396
    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    return-void
.end method

.method private setUpSpans(ILcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-virtual {v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->clearSpans()V

    .line 337
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 340
    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 341
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    if-nez p2, :cond_0

    .line 345
    new-instance p2, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    goto :goto_0

    .line 347
    :cond_0
    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    invoke-direct {v1, p0, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    move-object p2, v1

    .line 350
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    const/16 v2, 0x21

    invoke-virtual {v1, p2, p1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 351
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-virtual {p1, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->addSpan(Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    .line 354
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    sget-object p2, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 355
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method

.method private updateColor()V
    .locals 10

    .line 374
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    if-nez v0, :cond_1

    .line 375
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_DARK:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->TEXT_COLOR_LIGHT:I

    :cond_1
    :goto_0
    const/4 v1, 0x4

    new-array v7, v1, [I

    const/4 v1, 0x0

    aput v1, v7, v1

    const/4 v2, 0x1

    aput v0, v7, v2

    const/4 v2, 0x2

    aput v0, v7, v2

    const/4 v0, 0x3

    aput v1, v7, v0

    .line 383
    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    int-to-float v5, v1

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mStops:[F

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 388
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTranslationX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 389
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 390
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 391
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private updateDisplayWidth()V
    .locals 5

    .line 177
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/systemui/assist/uihints/DisplayUtils;->getRotatedWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDisplayWidthPx:I

    const/4 v1, 0x4

    new-array v1, v1, [F

    .line 179
    iget v2, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_START_PX:F

    int-to-float v3, v0

    div-float v3, v2, v3

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_START_PX:F

    add-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    int-to-float v2, v0

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->FADE_DISTANCE_END_PX:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->BUMPER_DISTANCE_END_PX:F

    sub-float/2addr v2, v3

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    const/4 v0, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v0

    iput-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mStops:[F

    .line 186
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method


# virtual methods
.method getAdaptiveDuration(FF)J
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 159
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getDurationRegularMs()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getDurationFastMs()J

    move-result-wide v2

    div-float p2, p1, p2

    invoke-static {v0, v1, v2, v3, p2}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->interpolate(JJF)F

    move-result p2

    .line 161
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getDurationMaxMs()J

    move-result-wide v0

    .line 162
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getDurationMinMs()J

    move-result-wide v2

    mul-float/2addr p1, p2

    float-to-long p0, p1

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    .line 161
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public hide(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0

    .line 205
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 206
    new-instance v0, Lcom/google/android/systemui/assist/uihints/TranscriptionView-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;)V

    if-nez p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 216
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 p0, 0x0

    .line 220
    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    .line 223
    :cond_2
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    .line 224
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    .line 225
    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v4, v3, v6

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    .line 226
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 227
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mCardVisible:Z

    if-nez p1, :cond_3

    .line 228
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v2, v2, [F

    .line 230
    invoke-virtual {p0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v3

    aput v3, v2, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    aput v3, v2, v6

    .line 229
    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    .line 231
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 228
    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$1;-><init>(Lcom/google/android/systemui/assist/uihints/TranscriptionView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 241
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mVisibilityAnimators:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 242
    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHideFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method initializeDeviceConfigHelper(Lcom/android/systemui/assist/DeviceConfigHelper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mDeviceConfigHelper:Lcom/android/systemui/assist/DeviceConfigHelper;

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 191
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->resetTranscription()V

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setTranscription(Ljava/lang/String;)V

    return-void
.end method

.method public onFontSizeChanged()V
    .locals 2

    .line 261
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 262
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->transcription_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    .line 261
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setCardVisible(Z)V
    .locals 0

    .line 256
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mCardVisible:Z

    return-void
.end method

.method public setHasDarkBackground(Z)V
    .locals 1

    .line 248
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    if-eq p1, v0, :cond_0

    .line 249
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mHasDarkBackground:Z

    .line 250
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    :cond_0
    return-void
.end method

.method setTranscription(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateDisplayWidth()V

    .line 278
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    :cond_0
    if-eqz v0, :cond_1

    .line 281
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 286
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    .line 287
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    invoke-static {v3, p1}, Lcom/google/android/systemui/assist/uihints/StringUtils;->calculateStringStabilityInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    move-result-object p1

    .line 288
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 289
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    iget-object v3, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v4, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 292
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionBuilder:Landroid/text/SpannableStringBuilder;

    .line 293
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 295
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 297
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 298
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    :cond_2
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    const/4 v4, 0x0

    if-nez v1, :cond_6

    .line 303
    iget-object v1, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 309
    :cond_3
    iget-object v1, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    .line 313
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 314
    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 315
    array-length v0, p1

    if-lez v0, :cond_4

    .line 317
    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    .line 320
    :cond_4
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->getSpans()Ljava/util/List;

    move-result-object p1

    .line 321
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 322
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;

    move-object v4, p1

    .line 325
    :cond_5
    invoke-direct {p0, v1, v4}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setUpSpans(ILcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    .line 328
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimator:Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;

    invoke-virtual {p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionAnimator;->createAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mTranscriptionAnimation:Landroid/animation/ValueAnimator;

    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 305
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->stable:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;->unstable:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p0, v0, v4}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->setUpSpans(ILcom/google/android/systemui/assist/uihints/TranscriptionView$TranscriptionSpan;)V

    int-to-float p1, v3

    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->getFullyVisibleDistance(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setX(F)V

    .line 307
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    :goto_1
    return-void
.end method

.method setTranscriptionColor(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->mRequestedTextColor:I

    .line 360
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TranscriptionView;->updateColor()V

    return-void
.end method
