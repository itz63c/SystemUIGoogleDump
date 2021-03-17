.class public Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;
.super Landroid/widget/LinearLayout;
.source "BubbleOverflowContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$NoScrollGridLayoutManager;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

.field private mController:Lcom/android/wm/shell/bubbles/BubbleController;

.field private final mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

.field private mEmptyState:Landroid/widget/LinearLayout;

.field private mEmptyStateImage:Landroid/widget/ImageView;

.field private mEmptyStateSubtitle:Landroid/widget/TextView;

.field private mEmptyStateTitle:Landroid/widget/TextView;

.field private mOverflowBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 219
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 219
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 219
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    .line 219
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)Ljava/util/List;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;)Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    return-object p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 134
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 136
    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_recycler:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 137
    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_state:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    .line 138
    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    .line 139
    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    .line 140
    sget v0, Lcom/android/wm/shell/R$id;->bubble_overflow_empty_state_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    return-void
.end method

.method public setBubbleController(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateOverflow()V

    return-void
.end method

.method updateEmptyStateVisibility()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method updateOverflow()V
    .locals 11

    .line 144
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    sget v1, Lcom/android/wm/shell/R$integer;->bubbles_overflow_columns:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 146
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$NoScrollGridLayoutManager;

    .line 147
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView$NoScrollGridLayoutManager;-><init>(Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;Landroid/content/Context;I)V

    .line 146
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 152
    sget v3, Lcom/android/wm/shell/R$dimen;->bubble_overflow_padding:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 153
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    .line 154
    div-int v9, v2, v1

    .line 156
    sget v4, Lcom/android/wm/shell/R$integer;->bubbles_max_overflow:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-double v4, v4

    int-to-double v6, v1

    div-double/2addr v4, v6

    .line 157
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 158
    sget v4, Lcom/android/wm/shell/R$dimen;->bubble_overflow_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 159
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr v4, v0

    .line 160
    div-int v10, v4, v1

    .line 162
    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 163
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView-$$ExternalSyntheticLambda0;

    invoke-direct {v7, v1}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 164
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->getPositioner()Lcom/android/wm/shell/bubbles/BubblePositioner;

    move-result-object v8

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/function/Consumer;Lcom/android/wm/shell/bubbles/BubblePositioner;II)V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    .line 166
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mOverflowBubbles:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleController;->getOverflowBubbles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mAdapter:Lcom/android/wm/shell/bubbles/BubbleOverflowAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyState:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 175
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 176
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateEmptyStateVisibility()V

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mController:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mDataListener:Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/bubbles/BubbleController;->setOverflowListener(Lcom/android/wm/shell/bubbles/BubbleData$Listener;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->updateTheme()V

    return-void
.end method

.method updateTheme()V
    .locals 7

    .line 194
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x20

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 198
    :goto_0
    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 199
    sget v5, Lcom/android/wm/shell/R$drawable;->bubble_ic_empty_overflow_dark:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 200
    :cond_1
    sget v5, Lcom/android/wm/shell/R$drawable;->bubble_ic_empty_overflow_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 198
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    sget v4, Lcom/android/wm/shell/R$id;->bubble_overflow_container:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v1, :cond_2

    .line 204
    sget v5, Lcom/android/wm/shell/R$color;->bubbles_dark:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    .line 205
    :cond_2
    sget v5, Lcom/android/wm/shell/R$color;->bubbles_light:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 203
    :goto_2
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v4, -0x1000000

    const/4 v5, -0x1

    if-eqz v1, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    .line 210
    :goto_3
    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    if-eqz v1, :cond_4

    move v4, v5

    .line 211
    :cond_4
    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 212
    invoke-static {v2, v3, v1}, Lcom/android/internal/util/ContrastColorUtil;->ensureTextContrast(IIZ)I

    move-result v1

    .line 213
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleOverflowContainerView;->mEmptyStateSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :array_0
    .array-data 4
        0x10104e2
        0x1010038
    .end array-data
.end method
