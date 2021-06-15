.class public Lcom/google/android/systemui/assist/uihints/PromptView;
.super Landroid/widget/TextView;
.source "PromptView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field private final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mEnabled:Z

.field private mHandleString:Ljava/lang/String;

.field private mHasDarkBackground:Z

.field private mLastInvocationType:I

.field private final mRiseDistance:F

.field private mSqueezeString:Ljava/lang/String;

.field private final mTextColorDark:I

.field private final mTextColorLight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/assist/uihints/PromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/PromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/systemui/assist/uihints/PromptView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-direct {p1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    .line 40
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mEnabled:Z

    .line 43
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->transcription_text_dark:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mTextColorDark:I

    .line 61
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$color;->transcription_text_light:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mTextColorLight:I

    .line 62
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->assist_prompt_rise_distance:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mRiseDistance:F

    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->handle_invocation_prompt:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHandleString:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->squeeze_invocation_prompt:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mSqueezeString:Ljava/lang/String;

    .line 67
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 69
    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/assist/uihints/PromptView;->setHasDarkBackground(Z)V

    return-void
.end method

.method private setAlphaProgress(IF)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x3f4ccccd    # 0.8f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 147
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ea3d70b    # 0.32000002f

    cmpl-float v0, p2, p1

    if-lez v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float/2addr p2, p1

    invoke-virtual {v0, p2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private setTranslationYProgress(F)V
    .locals 1

    .line 142
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mRiseDistance:F

    neg-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method private updateViewHeight()V
    .locals 4

    .line 156
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->assist_prompt_start_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iget v2, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mRiseDistance:F

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->transcription_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 162
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mEnabled:Z

    const/16 v0, 0x8

    .line 103
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mEnabled:Z

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->handle_invocation_prompt:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHandleString:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->squeeze_invocation_prompt:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mSqueezeString:Ljava/lang/String;

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 80
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->transcription_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/PromptView;->updateViewHeight()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/PromptView;->updateViewHeight()V

    return-void
.end method

.method public onInvocationProgress(IF)V
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/16 p1, 0x8

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 114
    iput v2, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    goto :goto_1

    .line 115
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mEnabled:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 132
    iput v2, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    const-string v0, ""

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_2
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    if-eq v0, p1, :cond_4

    .line 126
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    .line 127
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mSqueezeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mSqueezeString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_3
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    if-eq v0, p1, :cond_4

    .line 119
    iput p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mLastInvocationType:I

    .line 120
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHandleString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHandleString:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 135
    :cond_4
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    invoke-direct {p0, p2}, Lcom/google/android/systemui/assist/uihints/PromptView;->setTranslationYProgress(F)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/PromptView;->setAlphaProgress(IF)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setHasDarkBackground(Z)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 92
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mTextColorDark:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mTextColorLight:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/PromptView;->mHasDarkBackground:Z

    :cond_1
    return-void
.end method
