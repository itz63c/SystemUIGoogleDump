.class public Lcom/google/android/systemui/gamedashboard/GameDashboardButton;
.super Landroid/widget/ImageView;
.source "GameDashboardButton.java"


# instance fields
.field private final mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

.field private final mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mOvalBackgroundDrawableToggled:Landroid/graphics/drawable/Drawable;

.field private mToggled:Z


# direct methods
.method public static synthetic $r8$lambda$adkb1ofPDCjilo_OXLt9Xm4VCCs(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    sget p2, Lcom/android/systemui/R$drawable;->game_dashboard_button_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    new-instance v1, Landroid/graphics/BlendModeColorFilter;

    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$color;->game_menu_toggle_oval_background:I

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mOvalBackgroundDrawableToggled:Landroid/graphics/drawable/Drawable;

    .line 33
    new-instance p2, Landroid/graphics/BlendModeColorFilter;

    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$color;->game_menu_toggle_oval_background_toggled:I

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/BlendMode;->SRC_ATOP:Landroid/graphics/BlendMode;

    invoke-direct {p2, v1, v2}, Landroid/graphics/BlendModeColorFilter;-><init>(ILandroid/graphics/BlendMode;)V

    .line 33
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 37
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->game_menu_toggle_icon:I

    .line 38
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 40
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->game_menu_toggle_icon_toggled:I

    .line 41
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    move-result p2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$setOnClickListener$0(Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->toggle()V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mOvalBackgroundDrawableToggled:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mOvalBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refreshDrawable()V

    return-void
.end method

.method private refreshDrawable()V
    .locals 2

    .line 79
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilterToggled:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mDrawableColorFilter:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-void
.end method

.method private toggle()V
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->setToggled(Z)V

    return-void
.end method


# virtual methods
.method public isToggled()Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    return p0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refreshDrawable()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 48
    new-instance v0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/gamedashboard/GameDashboardButton;Landroid/view/View$OnClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setToggled(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->mToggled:Z

    .line 62
    invoke-direct {p0}, Lcom/google/android/systemui/gamedashboard/GameDashboardButton;->refresh()V

    return-void
.end method
