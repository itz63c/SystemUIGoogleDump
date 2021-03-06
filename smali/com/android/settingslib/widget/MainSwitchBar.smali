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
.field private mDisabledByAdmin:Z

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mRestrictedIcon:Landroid/widget/ImageView;

.field private mSwitch:Landroid/widget/Switch;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$ZTaxwM_8FU930vugSM3XzNHi_sU(Lcom/android/settingslib/widget/MainSwitchBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->lambda$new$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rN8bSl54RQDz28q33LXHW78-FT8(Lcom/android/settingslib/widget/MainSwitchBar;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->lambda$new$0(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settingslib/widget/R$layout;->main_switch_bar:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p2, 0x1

    .line 74
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 75
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 77
    sget p2, Lcom/android/settingslib/widget/R$id;->switch_text:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    const p2, 0x1020040

    .line 78
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    .line 80
    new-instance p2, Lcom/android/settingslib/widget/MainSwitchBar-$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/settingslib/widget/MainSwitchBar-$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/widget/MainSwitchBar;)V

    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 82
    sget p2, Lcom/android/settingslib/widget/R$id;->restricted_icon:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    .line 83
    new-instance p3, Lcom/android/settingslib/widget/MainSwitchBar-$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar-$$ExternalSyntheticLambda0;-><init>(Lcom/android/settingslib/widget/MainSwitchBar;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/widget/Switch;Z)V
    .locals 0

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 84
    iget-boolean p2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mDisabledByAdmin:Z

    if-eqz p2, :cond_0

    .line 85
    iget-object p2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->onRestrictedIconClick()V

    :cond_0
    return-void
.end method

.method private propagateChecked(Z)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 227
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


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method getDelegatingView()Landroid/view/View;
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    :goto_0
    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 157
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

    .line 95
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 287
    check-cast p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;

    .line 289
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 291
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 292
    iget-boolean v0, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setChecked(Z)V

    .line 293
    iget-boolean v0, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    iget-boolean p1, p1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mVisible:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 296
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method protected onRestrictedIconClick()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 277
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 279
    new-instance v1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 280
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mChecked:Z

    .line 281
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->isShowing()Z

    move-result p0

    iput-boolean p0, v1, Lcom/android/settingslib/widget/MainSwitchBar$SavedState;->mVisible:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 0

    .line 100
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->getDelegatingView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    .line 184
    iput-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 186
    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 187
    iput-boolean v1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mDisabledByAdmin:Z

    .line 188
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setVisibility(I)V

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_0
    iput-boolean v2, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mDisabledByAdmin:Z

    .line 194
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mRestrictedIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/settingslib/widget/MainSwitchBar;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 204
    iget-boolean v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mDisabledByAdmin:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
