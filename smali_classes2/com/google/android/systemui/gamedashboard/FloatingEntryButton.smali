.class public Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;
.super Ljava/lang/Object;
.source "FloatingEntryButton.java"


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mEntryPointButton:Landroid/widget/ImageView;

.field private mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private final mFloatingView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mMargin:I

.field private final mNonGesturalModeMargin:I

.field private mVisibilityChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    .line 53
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    .line 54
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    .line 55
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->game_dashboard_floating_entry_point:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    .line 57
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 59
    sget v2, Lcom/android/systemui/R$id;->game_dashboard_entry_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Landroid/widget/ImageView;

    .line 60
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 63
    sget v1, Lcom/android/systemui/R$dimen;->game_dashboard_floating_entry_point_margin:I

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    .line 65
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 63
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mNonGesturalModeMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Z
    .locals 0

    .line 37
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Ljava/util/function/Consumer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Landroid/view/View;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method public hide()Z
    .locals 3

    .line 119
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 123
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    .line 124
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 125
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShow(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    if-nez p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    return-void
.end method

.method public setEntryPointOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setVisibilityChangedCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public show(Z)Z
    .locals 12

    .line 81
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    .line 88
    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 89
    iget v3, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    if-nez p1, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 92
    iget p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mNonGesturalModeMargin:I

    move v7, p1

    move v8, v3

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-ne v2, v0, :cond_2

    .line 94
    iget p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mNonGesturalModeMargin:I

    move v8, p1

    move v7, v3

    goto :goto_0

    :cond_2
    move v7, v3

    move v8, v7

    .line 96
    :goto_0
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    const/16 v9, 0x7e8

    const/16 v10, 0x8

    const/4 v11, -0x3

    move-object v4, p1

    invoke-direct/range {v4 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 100
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "FloatingEntryButton"

    .line 101
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const v1, 0x800055

    .line 103
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 104
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;-><init>(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v0

    :cond_3
    :goto_1
    return v1
.end method
