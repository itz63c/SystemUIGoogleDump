.class public abstract Lcom/android/keyguard/KeyguardPinBasedInputView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPinBasedInputView.java"


# instance fields
.field private mButtons:[Lcom/android/keyguard/NumPadKey;

.field private mDeleteButton:Lcom/android/keyguard/NumPadButton;

.field private mOkButton:Lcom/android/keyguard/NumPadButton;

.field protected mPasswordEntry:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0xa

    new-array p1, p1, [Lcom/android/keyguard/NumPadKey;

    .line 43
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    return-void
.end method

.method private performNumberClick(I)V
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    .line 125
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected getEnteredCredential()Lcom/android/internal/widget/LockscreenCredential;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/LockscreenCredential;->createPinOrNone(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    return-object p0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 0

    if-eqz p1, :cond_5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    .line 119
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 115
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 113
    :cond_1
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_user_request:I

    return p0

    .line 111
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_device_admin:I

    return p0

    .line 109
    :cond_3
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pin:I

    return p0

    .line 107
    :cond_4
    sget p0, Lcom/android/systemui/R$string;->kg_prompt_reason_restart_pin:I

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 195
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x104040a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 146
    sget v0, Lcom/android/systemui/R$id;->key_enter:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    .line 148
    sget v0, Lcom/android/systemui/R$id;->delete_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/NumPadButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    const/4 v2, 0x0

    .line 149
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v3, Lcom/android/systemui/R$id;->key0:I

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/NumPadKey;

    aput-object v3, v0, v2

    .line 152
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v2, Lcom/android/systemui/R$id;->key1:I

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/NumPadKey;

    aput-object v2, v0, v1

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key2:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key3:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key4:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key5:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 157
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key6:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key7:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 159
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key8:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    sget v1, Lcom/android/systemui/R$id;->key9:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/NumPadKey;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 163
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->reloadColors()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 83
    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 84
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return v1

    :cond_0
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 87
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->performClick()Z

    return v1

    :cond_1
    const/4 v0, 0x7

    if-lt p1, v0, :cond_2

    const/16 v2, 0x10

    if-gt p1, v2, :cond_2

    sub-int/2addr p1, v0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    :cond_2
    const/16 v0, 0x90

    if-lt p1, v0, :cond_3

    const/16 v2, 0x99

    if-gt p1, v2, :cond_3

    sub-int/2addr p1, v0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->performNumberClick(I)V

    return v1

    .line 100
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public reloadColors()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 186
    invoke-virtual {v3}, Lcom/android/keyguard/NumPadKey;->reloadColors()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->reloadColors()V

    .line 189
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadButton;->reloadColors()V

    .line 190
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p0}, Lcom/android/keyguard/NumPadButton;->reloadColors()V

    return-void
.end method

.method protected resetPasswordText(ZZ)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/PasswordTextView;->reset(ZZ)V

    return-void
.end method

.method protected resetState()V
    .locals 0

    return-void
.end method

.method public setIsNewLayoutEnabled(Z)V
    .locals 2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 172
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mButtons:[Lcom/android/keyguard/NumPadKey;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 173
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/keyguard/NumPadKey;->disableNewLayout()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mDeleteButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p1}, Lcom/android/keyguard/NumPadButton;->disableNewLayout()V

    .line 176
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {p1}, Lcom/android/keyguard/NumPadButton;->disableNewLayout()V

    .line 177
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->reloadColors()V

    :cond_1
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected setPasswordEntryInputEnabled(Z)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mOkButton:Lcom/android/keyguard/NumPadButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 77
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method
