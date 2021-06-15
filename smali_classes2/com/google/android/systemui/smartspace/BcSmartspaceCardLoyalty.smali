.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;
.source "BcSmartspaceCardLoyalty.java"


# instance fields
.field private mCardPromptView:Landroid/widget/TextView;

.field private mLoyaltyProgramLogoView:Landroid/widget/ImageView;

.field private mLoyaltyProgramNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->onFinishInflate()V

    .line 95
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->loyalty_program_logo:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramLogoView:Landroid/widget/ImageView;

    .line 96
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->loyalty_program_name:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramNameView:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->card_prompt:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mCardPromptView:Landroid/widget/TextView;

    return-void
.end method

.method setCardPrompt(Ljava/lang/String;)V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mCardPromptView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardLoyalty"

    const-string p1, "No card prompt view to update"

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setLoyaltyProgramName(Ljava/lang/String;)V
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramNameView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardLoyalty"

    const-string p1, "No loyalty program name view to update"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 119
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)Z
    .locals 3

    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)Z

    .line 57
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 60
    :goto_0
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramLogoView:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramNameView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mCardPromptView:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    const-string p3, "imageBitmap"

    .line 66
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    const-string v0, "cardPrompt"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->setCardPrompt(Ljava/lang/String;)V

    .line 69
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mCardPromptView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_1

    .line 71
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardGenericImage;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return v2

    :cond_2
    const-string v0, "loyaltyProgramName"

    .line 74
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->setLoyaltyProgramName(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramNameView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p3, :cond_3

    .line 78
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return v2

    :cond_4
    if-eqz p3, :cond_5

    .line 83
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoyalty;->mLoyaltyProgramLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return p3

    :cond_6
    return p2
.end method
