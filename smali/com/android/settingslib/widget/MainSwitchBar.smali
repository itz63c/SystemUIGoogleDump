.class public Lcom/android/settingslib/widget/MainSwitchBar;
.super Landroid/widget/LinearLayout;
.source "MainSwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/MainSwitchBar$SavedState;
    }
.end annotation


# instance fields
.field private mBackgroundActivatedColor:I

.field private mBackgroundColor:I

.field private mBackgroundDisabled:Landroid/graphics/drawable/Drawable;

.field private mBackgroundOff:Landroid/graphics/drawable/Drawable;

.field private mBackgroundOn:Landroid/graphics/drawable/Drawable;

.field private mFrameView:Landroid/view/View;

.field protected mSwitch:Landroid/widget/Switch;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$rN8bSl54RQDz28q33LXHW78-FT8(Lcom/android/settingslib/widget/MainSwitchBar;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->lambda$new$0(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget p4, Lcom/android/settingslib/widget/R$layout;->settingslib_main_switch_bar:I

    invoke-virtual {p3, p4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 77
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    new-array p3, p4, [I

    const v1, 0x1010435

    aput v1, p3, v0

    .line 78
    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 80
    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundActivatedColor:I

    .line 81
    sget v1, Lcom/android/settingslib/widget/R$color;->settingslib_switchbar_background_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundColor:I

    .line 82
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_0
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 86
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 88
    sget p3, Lcom/android/settingslib/widget/R$id;->frame:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mFrameView:Landroid/view/View;

    .line 89
    sget p3, Lcom/android/settingslib/widget/R$id;->switch_text:I

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    const p3, 0x1020040

    .line 90
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Switch;

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/android/settingslib/widget/R$drawable;->settingslib_switch_bar_bg_on:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    .line 92
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/android/settingslib/widget/R$drawable;->settingslib_switch_bar_bg_off:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget v1, Lcom/android/settingslib/widget/R$drawable;->settingslib_switch_bar_bg_disabled:I

    invoke-virtual {p3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundDisabled:Landroid/graphics/drawable/Drawable;

    .line 96
    new-instance p3, Lcom/android/settingslib/widget/MainSwitchBar$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/settingslib/widget/MainSwitchBar$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/MainSwitchBar;)V

    invoke-virtual {p0, p3}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 98
    iget-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p3}, Landroid/widget/Switch;->isChecked()Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    if-eqz p2, :cond_1

    .line 101
    sget-object p3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    sget p2, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 106
    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    :cond_1
    invoke-direct {p0, p4}, Lcom/android/settingslib/widget/MainSwitchBar;->setBackground(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/Switch;Z)V
    .locals 0

    .line 96
    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method private propagateChecked(Z)V
    .locals 4

    .line 217
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setBackground(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    iget-object v3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-interface {v2, v3, p1}, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setBackground(Z)V
    .locals 1

    .line 226
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 227
    iget p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundActivatedColor:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundColor:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mFrameView:Landroid/view/View;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 178
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 115
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 289
    check-cast p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;

    .line 291
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 293
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 294
    iget-boolean v0, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    .line 295
    iget-boolean v0, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setBackground(Z)V

    .line 296
    iget-boolean v0, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    iget-boolean p1, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mVisible:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 279
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 281
    new-instance v1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 282
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->isShowing()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mVisible:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/Switch;->performClick()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setBackground(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 203
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 207
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 209
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mFrameView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundOn:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundOff:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mFrameView:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mBackgroundDisabled:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 152
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
