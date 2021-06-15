.class public Lcom/android/settingslib/widget/BannerMessagePreference;
.super Landroidx/preference/Preference;
.source "BannerMessagePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;
    }
.end annotation


# instance fields
.field private mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

.field private mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0}, Lcom/android/settingslib/widget/BannerMessagePreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    .line 82
    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-direct {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 84
    sget v0, Lcom/android/settingslib/widget/R$layout;->banner_message:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    sget v1, Lcom/android/settingslib/widget/R$id;->banner_positive_btn:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->access$002(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    sget v1, Lcom/android/settingslib/widget/R$id;->banner_negative_btn:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->access$002(Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;Landroid/widget/Button;)Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mPositiveButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->setUpButton()V

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/widget/BannerMessagePreference;->mNegativeButtonInfo:Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/BannerMessagePreference$ButtonInfo;->setUpButton()V

    .line 73
    sget v0, Lcom/android/settingslib/widget/R$id;->banner_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 74
    sget v1, Lcom/android/settingslib/widget/R$id;->banner_summary:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 76
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
