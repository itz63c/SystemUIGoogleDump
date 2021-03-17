.class public final Lcom/android/systemui/util/animation/TransitionLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TransitionLayout.kt"


# instance fields
.field private final boundsRect:Landroid/graphics/Rect;

.field private currentState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private desiredMeasureHeight:I

.field private desiredMeasureWidth:I

.field private isPreDrawApplicatorRegistered:Z

.field private measureAsConstraint:Z

.field private measureState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private final originalGoneChildrenSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final originalViewAlphas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

.field private updateScheduled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    .line 44
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/Set;

    .line 45
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/Map;

    .line 47
    new-instance p1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 58
    new-instance p1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 74
    new-instance p1, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;-><init>(Lcom/android/systemui/util/animation/TransitionLayout;)V

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 37
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/animation/TransitionLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$applyCurrentState(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    return-void
.end method

.method public static final synthetic access$setPreDrawApplicatorRegistered$p(Lcom/android/systemui/util/animation/TransitionLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    return-void
.end method

.method public static final synthetic access$setUpdateScheduled$p(Lcom/android/systemui/util/animation/TransitionLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    return-void
.end method

.method private final applyCurrentState()V
    .locals 13

    .line 111
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    .line 113
    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getContentTranslation()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-int v2, v2

    add-int/lit8 v3, v0, -0x1

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_e

    if-ltz v3, :cond_e

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 115
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 116
    iget-object v6, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v6, :cond_0

    goto/16 :goto_a

    .line 124
    :cond_0
    instance-of v7, v4, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 125
    move-object v7, v4

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 126
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_1

    :cond_1
    move v7, v0

    .line 128
    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    .line 134
    :goto_2
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 135
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 136
    :cond_3
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 138
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v10

    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 140
    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    .line 141
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v4, v0, v0, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_4
    if-nez v7, :cond_5

    move v8, v0

    goto :goto_3

    .line 143
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 144
    :goto_3
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getX()F

    move-result v9

    float-to-int v9, v9

    add-int/2addr v9, v1

    sub-int/2addr v9, v8

    .line 145
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getY()F

    move-result v10

    float-to-int v10, v10

    add-int/2addr v10, v2

    const/4 v11, 0x1

    if-eqz v7, :cond_6

    move v7, v11

    goto :goto_4

    :cond_6
    move v7, v0

    :goto_4
    if-eqz v7, :cond_7

    .line 147
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v12

    goto :goto_5

    :cond_7
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v12

    :goto_5
    if-eqz v7, :cond_8

    .line 148
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v7

    goto :goto_6

    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v7

    :goto_6
    add-int/2addr v12, v9

    add-int/2addr v7, v10

    .line 149
    invoke-virtual {v4, v9, v10, v12, v7}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 150
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleX(F)V

    .line 151
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getScale()F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/View;->setScaleY(F)V

    .line 152
    invoke-virtual {v4}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 153
    :cond_9
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getWidth()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getHeight()I

    move-result v10

    invoke-virtual {v7, v8, v0, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 154
    invoke-virtual {v4, v7}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 155
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v7

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    .line 156
    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {v6}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    move v11, v0

    :goto_7
    if-eqz v11, :cond_b

    goto :goto_8

    :cond_b
    move v6, v0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 v6, 0x4

    :goto_9
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_a
    if-le v5, v3, :cond_d

    goto :goto_b

    :cond_d
    move v4, v5

    goto/16 :goto_0

    .line 162
    :cond_e
    :goto_b
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->updateBounds()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getTranslation()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v0}, Lcom/android/systemui/util/animation/TransitionViewState;->getAlpha()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;F)V

    return-void
.end method

.method private final applyCurrentStateOnPredraw()V
    .locals 3

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 170
    iput-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    .line 171
    iget-boolean v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    if-nez v1, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 173
    iput-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    :cond_0
    return-void
.end method

.method private final applySetToFullLayout(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 5

    .line 265
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_3

    if-ltz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 267
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 268
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    .line 269
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    if-nez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    if-le v2, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_0

    .line 275
    :cond_3
    :goto_2
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final ensureViewsNotGone()V
    .locals 6

    .line 283
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_3

    if-ltz v1, :cond_3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 285
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 286
    iget-object v4, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v4}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 287
    :cond_0
    invoke-virtual {v4}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x4

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    if-le v3, v1, :cond_2

    goto :goto_3

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method private final updateBounds()V
    .locals 4

    .line 217
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v2}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    .line 220
    iget-object v3, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v3}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 219
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public final calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 4

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraintSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 238
    new-instance p3, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p3}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 240
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/util/animation/TransitionLayout;->applySetToFullLayout(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 241
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/4 v1, 0x1

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    .line 246
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->measure(II)V

    .line 247
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p1

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 249
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    .line 251
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/animation/TransitionViewState;->initFromLayout(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->ensureViewsNotGone()V

    .line 255
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentStateOnPredraw()V

    return-object p3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->boundsRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 212
    :goto_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_2

    goto :goto_2

    .line 213
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->preDrawApplicator:Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 85
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 86
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_3

    if-ltz v1, :cond_3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 89
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 90
    invoke-virtual {v3, v0}, Landroid/view/View;->setId(I)V

    .line 92
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalGoneChildrenSet:Ljava/util/Set;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->originalViewAlphas:Ljava/util/Map;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-le v2, v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 196
    iget-boolean p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    if-eqz p2, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    move-object v0, p0

    move v1, p1

    invoke-super/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    goto :goto_2

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    const/high16 p3, -0x80000000

    if-eq p1, p3, :cond_2

    if-ltz p2, :cond_2

    const/4 p1, 0x0

    move p3, p1

    :goto_0
    add-int/lit8 p4, p3, 0x1

    .line 201
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 202
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p3, p1, p1, p5, v0}, Landroid/view/View;->layout(IIII)V

    if-le p4, p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, p4

    goto :goto_0

    .line 205
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    :goto_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->measureAsConstraint:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    goto :goto_3

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    add-int/lit8 v0, p1, -0x1

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_3

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 p1, p2, 0x1

    .line 183
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 184
    iget-object v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-virtual {v1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_1

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 187
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getMeasureHeight()I

    move-result v1

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 189
    invoke-virtual {p2, v2, v1}, Landroid/view/View;->measure(II)V

    :goto_1
    if-le p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move p2, p1

    goto :goto_0

    .line 191
    :cond_3
    :goto_2
    iget p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    iget p2, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_3
    return-void
.end method

.method public final setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v0

    .line 61
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p1

    .line 62
    iget v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    if-eq p1, v1, :cond_2

    .line 63
    :cond_0
    iput v0, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureWidth:I

    .line 64
    iput p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->desiredMeasureHeight:I

    .line 67
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->forceLayout()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->currentState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    return-void
.end method
