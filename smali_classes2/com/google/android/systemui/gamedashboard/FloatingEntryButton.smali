.class public Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;
.super Ljava/lang/Object;
.source "FloatingEntryButton.java"


# instance fields
.field private mCanShow:Z

.field private final mContext:Landroid/content/Context;

.field private final mEntryPointButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

.field private mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

.field private final mFloatingView:Landroid/view/View;

.field private mIsShowing:Z

.field private final mMargin:I

.field private final mNonGesturalModeYMarginInPortrait:I

.field private final mScreenRecordButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

.field private final mScreenshotButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    .line 60
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    .line 61
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->game_dashboard_floating_entry_point:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    .line 64
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    sget v2, Lcom/android/systemui/R$id;->game_dashboard_entry_button:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    .line 67
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    sget v2, Lcom/android/systemui/R$id;->game_dashboard_screen_record:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenRecordButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    .line 71
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    sget v2, Lcom/android/systemui/R$id;->game_dashboard_screenshot:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    iput-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenshotButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 77
    sget v1, Lcom/android/systemui/R$dimen;->game_dashboard_floating_entry_point_min_margin:I

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget v2, Lcom/android/systemui/R$dimen;->rounded_corner_content_padding:I

    .line 79
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 77
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$dimen;->navigation_bar_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mNonGesturalModeYMarginInPortrait:I

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Ljava/util/function/Consumer;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)Landroid/view/View;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method private createIcon(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 7

    .line 87
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getLightIconColor()I

    move-result v2

    .line 88
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->getDarkIconColor()I

    move-result v3

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3f6b851f    # 0.92f

    .line 89
    invoke-static {v0, v0, v0, v1}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v6

    .line 91
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarOverlayController;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v5, 0x0

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;IIIZLandroid/graphics/Color;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getCurrentView()Landroid/view/View;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    return-object p0
.end method

.method public hide()Z
    .locals 3

    .line 143
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 147
    iput-boolean v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    .line 148
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 149
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    return p0
.end method

.method public setCanShow(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    if-nez p1, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->hide()Z

    :cond_0
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setDarkIntensity(F)V

    .line 172
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenRecordButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setDarkIntensity(F)V

    return-void
.end method

.method public setEntryPointController(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 1

    .line 97
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointController:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    .line 99
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_game_dashboard_entry:I

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->createIcon(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenRecordButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_screen_record:I

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->createIcon(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenshotButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    sget v0, Lcom/android/systemui/R$drawable;->ic_screenshot:I

    invoke-direct {p0, v0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->createIcon(I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEntryPointOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mEntryPointButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setScreenRecordOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenRecordButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setScreenshotOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mScreenshotButton:Lcom/android/systemui/navigationbar/buttons/KeyButtonView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

    .line 183
    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mVisibilityChangedCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public show(Z)Z
    .locals 10

    .line 109
    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mCanShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mIsShowing:Z

    if-nez p1, :cond_2

    .line 117
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    iget p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mNonGesturalModeYMarginInPortrait:I

    goto :goto_1

    :cond_2
    :goto_0
    iget p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    :goto_1
    move v6, p1

    .line 120
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    iget v5, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mMargin:I

    const/16 v7, 0x7e8

    const/16 v8, 0x8

    const/4 v9, -0x3

    move-object v2, p1

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 124
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v2, "FloatingEntryButton"

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/16 v1, 0x53

    .line 127
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 128
    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;->mFloatingView:Landroid/view/View;

    new-instance v1, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/gamedashboard/FloatingEntryButton$1;-><init>(Lcom/google/android/systemui/gamedashboard/FloatingEntryButton;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v0

    :cond_3
    :goto_2
    return v1
.end method
