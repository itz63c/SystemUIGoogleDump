.class public Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;
.super Landroid/widget/FrameLayout;
.source "SizeCompatRestartButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

.field private mRestartButton:Landroid/widget/ImageButton;

.field mShowingHint:Landroid/widget/PopupWindow;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mWinParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static synthetic $r8$lambda$QtYutihBJQBvzW8ykK-OU_VqTBc(Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->lambda$showHint$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$j28O_jtVnHtQjHsv1qUppo7_LsI(Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->lambda$showHint$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private synthetic lambda$showHint$0()V
    .locals 1

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mShowingHint:Landroid/widget/PopupWindow;

    return-void
.end method

.method private synthetic lambda$showHint$1(Landroid/view/View;)V
    .locals 0

    .line 151
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->dismissHint()V

    return-void
.end method


# virtual methods
.method dismissHint()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mShowingHint:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mShowingHint:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method inject(Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    .line 70
    invoke-virtual {p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 104
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    iget-boolean v1, v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 105
    iput-boolean v1, v0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mShouldShowHint:Z

    .line 106
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->showHint()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->onRestartButtonClicked()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 80
    sget v0, Lcom/android/wm/shell/R$id;->size_compat_restart_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mRestartButton:Landroid/widget/ImageButton;

    const v0, -0x333334

    .line 81
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 82
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    .line 83
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 84
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 85
    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mRestartButton:Landroid/widget/ImageButton;

    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mRestartButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mRestartButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->showHint()V

    const/4 p0, 0x1

    return p0
.end method

.method remove()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->dismissHint()V

    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    .line 121
    invoke-static {p1}, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->getGravity(I)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v0, :cond_0

    .line 123
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mShowingHint:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->dismissHint()V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method showHint()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mShowingHint:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    .line 137
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$layout;->size_compat_mode_hint:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 139
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-direct {v1, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 141
    iget-object v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 142
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/wm/shell/R$dimen;->bubble_elevation:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setElevation(F)V

    const v3, 0x1030056

    .line 143
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v3, 0x0

    .line 144
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 145
    new-instance v3, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton-$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton-$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 146
    iput-object v1, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mShowingHint:Landroid/widget/PopupWindow;

    .line 148
    sget v3, Lcom/android/wm/shell/R$id;->got_it:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 149
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    const v4, -0x333334

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-direct {v3, v4, v2, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    new-instance v2, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton-$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mRestartButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mWinParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatRestartButton;->mLayout:Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;

    iget v3, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetX:I

    iget p0, p0, Lcom/android/wm/shell/sizecompatui/SizeCompatUILayout;->mPopupOffsetY:I

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
