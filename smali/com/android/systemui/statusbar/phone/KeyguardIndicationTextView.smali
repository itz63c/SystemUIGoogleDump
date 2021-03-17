.class public Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;
.super Landroid/widget/TextView;
.source "KeyguardIndicationTextView.java"


# instance fields
.field private mAnimationsEnabled:Z

.field private mKeyguardIndicationInfo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/systemui/keyguard/KeyguardIndication;",
            ">;"
        }
    .end annotation
.end field

.field private mMessages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAnimationTime:J

.field private mUseNewAnimations:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 46
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    .line 49
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    .line 49
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    .line 49
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    const/4 p1, 0x1

    .line 47
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    .line 48
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    .line 49
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Ljava/util/LinkedList;

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)Ljava/util/LinkedList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)Ljava/util/LinkedList;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    return-object p0
.end method

.method private getFadeInDelay()J
    .locals 3

    .line 195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 196
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x96

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method private getFadeInDuration()J
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 202
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x13d

    return-wide v0

    :cond_1
    const-wide/16 v0, 0xfa

    return-wide v0
.end method

.method private getFadeOutDuration()J
    .locals 2

    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 214
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    if-eqz p0, :cond_1

    const-wide/16 v0, 0xa7

    return-wide v0

    :cond_1
    const-wide/16 v0, 0xc8

    return-wide v0
.end method

.method private getInAnimator()Landroid/animation/AnimatorSet;
    .locals 8

    .line 165
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 166
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeInDelay()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeInDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 169
    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 171
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    if-eqz v3, :cond_0

    .line 172
    sget-object v3, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v6, v4, [F

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getYTranslationPixels()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v5

    const/4 v7, 0x0

    aput v7, v6, v2

    invoke-static {p0, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getYInDuration()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 175
    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array p0, v4, [Landroid/animation/Animator;

    aput-object v3, p0, v5

    aput-object v1, p0, v2

    .line 181
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    return-object v0
.end method

.method private getOutAnimator()Landroid/animation/AnimatorSet;
    .locals 10

    .line 127
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 128
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeOutDuration()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 130
    sget-object v3, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    invoke-virtual {v1, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    if-eqz v6, :cond_0

    .line 152
    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v8, v7, [F

    aput v5, v8, v4

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getYTranslationPixels()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v8, v2

    invoke-static {p0, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeOutDuration()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 155
    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p0, v7, [Landroid/animation/Animator;

    aput-object v1, p0, v4

    aput-object v5, p0, v2

    .line 156
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_0
    return-object v0
.end method

.method private getYInDuration()J
    .locals 3

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 208
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x258

    return-wide v0

    :cond_1
    return-wide v1
.end method

.method private getYTranslationPixels()I
    .locals 1

    .line 227
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_y_translation:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private setNextAnimationTime(J)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    if-eqz v0, :cond_0

    .line 220
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 222
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    :goto_0
    return-void
.end method


# virtual methods
.method public setAnimationsEnabled(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 191
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mAnimationsEnabled:Z

    return-void
.end method

.method public setLockScreenMode(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mUseNewAnimations:Z

    return-void
.end method

.method public switchIndication(I)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    return-void
.end method

.method public switchIndication(Lcom/android/systemui/keyguard/KeyguardIndication;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardIndication;->getMessage()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    return-void
.end method

.method public switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V
    .locals 9

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 100
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-nez v1, :cond_1

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mMessages:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mKeyguardIndicationInfo:Ljava/util/LinkedList;

    invoke-virtual {v1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_2

    .line 107
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardIndication;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 108
    :goto_0
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getOutAnimator()Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    .line 114
    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    sub-long/2addr v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 115
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getFadeOutDuration()J

    move-result-wide v7

    add-long/2addr v3, v7

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setNextAnimationTime(J)V

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_4

    .line 118
    :cond_3
    iget-wide p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->mNextAnimationTime:J

    const-wide/16 v3, 0x258

    add-long/2addr p1, v3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->setNextAnimationTime(J)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->getInAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 122
    :cond_4
    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 123
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_5
    :goto_1
    return-void
.end method
