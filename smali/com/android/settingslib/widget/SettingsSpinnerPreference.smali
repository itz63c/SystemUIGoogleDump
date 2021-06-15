.class public Lcom/android/settingslib/widget/SettingsSpinnerPreference;
.super Landroidx/preference/Preference;
.source "SettingsSpinnerPreference.java"


# instance fields
.field private mAdapter:Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;

.field private mIsClickable:Z

.field private mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mIsClickable:Z

    .line 124
    new-instance p1, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/widget/SettingsSpinnerPreference$1;-><init>(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)V

    iput-object p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 66
    sget p1, Lcom/android/settingslib/widget/R$layout;->settings_spinner_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/widget/SettingsSpinnerPreference;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/widget/SettingsSpinnerPreference;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 115
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 116
    sget v0, Lcom/android/settingslib/widget/R$id;->spinner:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinner;

    .line 117
    iget-boolean v0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mIsClickable:Z

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 118
    iget-boolean v0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mIsClickable:Z

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mAdapter:Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 120
    iget v0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mPosition:I

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 121
    iget-object p0, p0, Lcom/android/settingslib/widget/SettingsSpinnerPreference;->mOnSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
