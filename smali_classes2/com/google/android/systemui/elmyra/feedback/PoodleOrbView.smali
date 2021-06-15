.class public Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;
.super Landroid/widget/FrameLayout;
.source "PoodleOrbView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mBackground:Landroid/view/View;

.field private mBlue:Landroid/view/View;

.field private mFeedbackHeight:I

.field private mGreen:Landroid/view/View;

.field private mRed:Landroid/view/View;

.field private mState:I

.field private mYellow:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    .line 74
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method private approximatePath(Landroid/graphics/Path;FF)[[Landroid/animation/Keyframe;
    .locals 7

    const/high16 p0, 0x3f000000    # 0.5f

    .line 261
    invoke-virtual {p1, p0}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object p0

    .line 262
    array-length p1, p0

    div-int/lit8 p1, p1, 0x3

    new-array p1, p1, [Landroid/animation/Keyframe;

    .line 263
    array-length v0, p0

    div-int/lit8 v0, v0, 0x3

    new-array v0, v0, [Landroid/animation/Keyframe;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 264
    :goto_0
    array-length v4, p0

    const/4 v5, 0x1

    if-ge v2, v4, :cond_0

    sub-float v4, p3, p2

    add-int/lit8 v6, v2, 0x1

    .line 265
    aget v2, p0, v2

    mul-float/2addr v4, v2

    add-float/2addr v4, p2

    add-int/lit8 v2, v6, 0x1

    .line 267
    aget v6, p0, v6

    invoke-static {v4, v6}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v6

    aput-object v6, p1, v3

    add-int/lit8 v6, v2, 0x1

    .line 268
    aget v2, p0, v2

    invoke-static {v4, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    aput-object v2, v0, v3

    add-int/2addr v3, v5

    move v2, v6

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [[Landroid/animation/Keyframe;

    aput-object p1, p0, v1

    aput-object v0, p0, v5

    return-object p0
.end method

.method private createBackgroundAnimator(Landroid/view/View;)[Landroid/animation/ObjectAnimator;
    .locals 12

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/animation/Keyframe;

    const/4 v1, 0x0

    .line 220
    invoke-static {v1, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/high16 v2, 0x3ec00000    # 0.375f

    const v4, 0x3f99999a    # 1.2f

    .line 222
    invoke-static {v2, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v0, v6

    const/high16 v5, 0x3f400000    # 0.75f

    .line 223
    invoke-static {v5, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v0, v7

    const v4, 0x3f733333    # 0.95f

    const v8, 0x3e4ccccd    # 0.2f

    .line 224
    invoke-static {v4, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v0, v9

    const/high16 v8, 0x3f800000    # 1.0f

    .line 225
    invoke-static {v8, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    const/4 v10, 0x4

    aput-object v8, v0, v10

    .line 227
    aget-object v8, v0, v6

    new-instance v11, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v11}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v8, v11}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v8, v10, [Landroid/animation/Keyframe;

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v10

    invoke-static {v1, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v8, v3

    const/high16 v1, 0x41dc0000    # 27.5f

    .line 232
    invoke-direct {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v10

    invoke-static {v2, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    aput-object v2, v8, v6

    .line 233
    invoke-direct {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v1

    invoke-static {v5, v1}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v1

    aput-object v1, v8, v7

    const/high16 v1, 0x41ae0000    # 21.75f

    .line 234
    invoke-direct {p0, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result p0

    invoke-static {v4, p0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p0

    aput-object p0, v8, v9

    new-array p0, v9, [Landroid/animation/ObjectAnimator;

    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    .line 237
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 239
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    .line 238
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, p0, v3

    new-array v1, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 241
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    aput-object v0, v1, v3

    .line 240
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    aput-object v0, p0, v6

    new-array v0, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 243
    invoke-static {v1, v8}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v3

    .line 242
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p0, v7

    :goto_0
    if-ge v3, v9, :cond_0

    .line 246
    aget-object p1, p0, v3

    const-wide/16 v0, 0x3e8

    .line 247
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [Landroid/animation/Keyframe;

    .line 282
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-static {v5, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v1, v6

    const v2, 0x3f733333    # 0.95f

    const v7, 0x3e99999a    # 0.3f

    .line 284
    invoke-static {v2, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    const/high16 v7, 0x3f800000    # 1.0f

    .line 285
    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v1, v10

    new-array v9, v0, [Landroid/animation/Keyframe;

    .line 290
    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    aput-object v11, v9, v4

    .line 291
    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v11

    aput-object v11, v9, v6

    const/high16 v11, 0x3e800000    # 0.25f

    .line 292
    invoke-static {v2, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    aput-object v2, v9, v8

    .line 293
    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    aput-object v2, v9, v10

    .line 297
    invoke-direct {p0, p3, v5, v7}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->approximatePath(Landroid/graphics/Path;FF)[[Landroid/animation/Keyframe;

    move-result-object p3

    .line 301
    aget-object v2, p3, v4

    array-length v2, v2

    add-int/2addr v2, v8

    new-array v2, v2, [Landroid/animation/Keyframe;

    .line 302
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v3, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v2, v4

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v7

    invoke-static {v5, v7}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    aput-object v7, v2, v6

    .line 304
    aget-object v7, p3, v4

    aget-object v11, p3, v4

    array-length v11, v11

    invoke-static {v7, v4, v2, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    aget-object v7, p3, v6

    array-length v7, v7

    add-int/2addr v7, v10

    new-array v7, v7, [Landroid/animation/Keyframe;

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v11

    invoke-static {v3, v11}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    aput-object v3, v7, v4

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-static {p2, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p2

    aput-object p2, v7, v6

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    iget p0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float p0, p0

    sub-float/2addr p2, p0

    .line 310
    invoke-static {v5, p2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object p0

    aput-object p0, v7, v8

    .line 312
    aget-object p0, p3, v6

    aget-object p2, p3, v6

    array-length p2, p2

    invoke-static {p0, v4, v7, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    aget-object p0, v7, v8

    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p2}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {p0, p2}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p0, 0x5

    new-array p2, p0, [Landroid/animation/ObjectAnimator;

    new-array p3, v6, [Landroid/animation/PropertyValuesHolder;

    .line 316
    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 318
    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, p3, v4

    .line 317
    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p2, v4

    new-array p3, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 320
    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, p3, v4

    .line 319
    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p2, v6

    new-array p3, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 322
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, p3, v4

    .line 321
    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p2, v8

    new-array p3, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 324
    invoke-static {v1, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, p3, v4

    .line 323
    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p3

    aput-object p3, p2, v10

    new-array p3, v6, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 326
    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, p3, v4

    .line 325
    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, p2, v0

    :goto_0
    if-ge v4, p0, :cond_0

    .line 329
    aget-object p1, p2, v4

    const-wide/16 v0, 0x3e8

    .line 330
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private px(F)F
    .locals 1

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 211
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 p1, 0x0

    .line 201
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0, p1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->onProgress(FI)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 21

    move-object/from16 v0, p0

    .line 95
    invoke-super/range {p0 .. p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 97
    sget v1, Lcom/android/systemui/R$id;->elmyra_feedback_background:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    .line 98
    sget v1, Lcom/android/systemui/R$id;->elmyra_feedback_blue:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    .line 99
    sget v1, Lcom/android/systemui/R$id;->elmyra_feedback_green:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    .line 100
    sget v1, Lcom/android/systemui/R$id;->elmyra_feedback_red:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    .line 101
    sget v1, Lcom/android/systemui/R$id;->elmyra_feedback_yellow:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->opa_elmyra_orb_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    .line 106
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 107
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 109
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 110
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 111
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 112
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iget v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 115
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBackground:Landroid/view/View;

    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createBackgroundAnimator(Landroid/view/View;)[Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 116
    iget-object v1, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 121
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, -0x3dfe0000    # -32.5f

    .line 122
    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v4

    const/high16 v10, -0x3e240000    # -27.5f

    invoke-direct {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v5

    const/high16 v11, 0x41700000    # 15.0f

    .line 123
    invoke-direct {v0, v11}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v6

    const/high16 v12, -0x3df90000    # -33.75f

    invoke-direct {v0, v12}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v7

    const/high16 v3, -0x3fe00000    # -2.5f

    .line 124
    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v8

    const/high16 v13, -0x3e600000    # -20.0f

    invoke-direct {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v9

    move-object v3, v1

    .line 122
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 125
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mBlue:Landroid/view/View;

    invoke-direct {v0, v4, v2, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 130
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, -0x3e380000    # -25.0f

    .line 131
    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v15

    const/high16 v3, -0x3e740000    # -17.5f

    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v16

    .line 132
    invoke-direct {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v17

    invoke-direct {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v18

    const/high16 v3, 0x40200000    # 2.5f

    .line 133
    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v19

    invoke-direct {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v20

    move-object v14, v1

    .line 131
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 134
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mRed:Landroid/view/View;

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 139
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    .line 140
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 139
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v3, 0x41aa0000    # 21.25f

    .line 141
    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v15

    invoke-direct {v0, v12}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v16

    .line 142
    invoke-direct {v0, v11}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v17

    invoke-direct {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v18

    .line 143
    invoke-direct {v0, v2}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v19

    invoke-direct {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v20

    move-object v14, v1

    .line 141
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 144
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mYellow:Landroid/view/View;

    const v5, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v4, v5, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 148
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 149
    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iget-object v4, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iget v5, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mFeedbackHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    invoke-direct {v0, v10}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v15

    invoke-direct {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v16

    const/high16 v3, 0x420c0000    # 35.0f

    .line 151
    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v17

    const/high16 v3, -0x3e100000    # -30.0f

    invoke-direct {v0, v3}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v18

    .line 152
    invoke-direct {v0, v2}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v19

    invoke-direct {v0, v13}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->px(F)F

    move-result v20

    move-object v14, v1

    .line 150
    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 153
    iget-object v2, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mGreen:Landroid/view/View;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v4, v1}, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->createDotAnimator(Landroid/view/View;FLandroid/graphics/Path;)[Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public onProgress(FI)V
    .locals 3

    .line 159
    iget p2, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p2, p1

    const/4 v0, 0x0

    add-float/2addr p2, v0

    .line 165
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    .line 166
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 167
    invoke-virtual {v2, p2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    goto :goto_0

    :cond_1
    cmpl-float p2, p1, v0

    if-nez p2, :cond_2

    const/4 p1, 0x0

    .line 171
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    goto :goto_1

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    const/4 p1, 0x2

    .line 173
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 175
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    :goto_1
    return-void
.end method

.method public onRelease()V
    .locals 2

    .line 182
    iget v0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 184
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    :cond_2
    return-void
.end method

.method public onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    .line 192
    iget-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    .line 195
    iput p1, p0, Lcom/google/android/systemui/elmyra/feedback/PoodleOrbView;->mState:I

    return-void
.end method
