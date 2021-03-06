.class public Lcom/android/systemui/qs/carrier/QSCarrier;
.super Landroid/widget/LinearLayout;
.source "QSCarrier.java"


# instance fields
.field private mCarrierText:Landroid/widget/TextView;

.field private mLastSignalState:Lcom/android/systemui/qs/carrier/CellSignalState;

.field private mMobileGroup:Landroid/view/View;

.field private mMobileRoaming:Landroid/widget/ImageView;

.field private mMobileSignal:Landroid/widget/ImageView;

.field private mProviderModel:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private hasValidTypeContentDescription(Ljava/lang/String;)Z
    .locals 2

    .line 120
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->data_connection_no_internet:I

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settingslib/R$string;->cell_data_off_content_description:I

    .line 123
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settingslib/R$string;->not_default_data_content_description:I

    .line 126
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .line 62
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 63
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-string v1, "settings_provider_model"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModel:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModel:Z

    .line 68
    :goto_0
    sget v0, Lcom/android/systemui/R$id;->mobile_combo:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileGroup:Landroid/view/View;

    .line 69
    sget v0, Lcom/android/systemui/R$id;->mobile_roaming:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    .line 70
    sget v0, Lcom/android/systemui/R$id;->mobile_signal:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->qs_carrier_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModel:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$drawable;->ic_qs_no_calling_sms:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settingslib/graph/SignalDrawable;

    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lcom/android/settingslib/graph/SignalDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public setCarrierText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mCarrierText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Lcom/android/systemui/qs/carrier/CellSignalState;)Z
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mLastSignalState:Lcom/android/systemui/qs/carrier/CellSignalState;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mLastSignalState:Lcom/android/systemui/qs/carrier/CellSignalState;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileGroup:Landroid/view/View;

    iget-boolean v2, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-boolean v0, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->visible:Z

    if-eqz v0, :cond_7

    .line 89
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    iget-boolean v2, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileRoaming:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mProviderModel:Z

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->mobileSignalIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    iget-object v1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    const-string v2, ", "

    if-eqz v1, :cond_4

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_4
    iget-boolean v1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->roaming:Z

    if-eqz v1, :cond_5

    .line 105
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->data_connection_roaming:I

    .line 106
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_5
    iget-object v1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/carrier/QSCarrier;->hasValidTypeContentDescription(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    iget-object p1, p1, Lcom/android/systemui/qs/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/carrier/QSCarrier;->mMobileSignal:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_2
    const/4 p0, 0x1

    return p0
.end method
