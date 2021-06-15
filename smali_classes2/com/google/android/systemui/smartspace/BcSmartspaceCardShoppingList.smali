.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source "BcSmartspaceCardShoppingList.java"


# static fields
.field private static final LIST_ITEM_TEXT_VIEW_IDS:[I


# instance fields
.field private mCardPromptIconView:Landroid/widget/ImageView;

.field private mCardPromptView:Landroid/widget/TextView;

.field private mEmptyListMessageView:Landroid/widget/TextView;

.field private mListIconView:Landroid/widget/ImageView;

.field private mSubtextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 43
    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->list_item_1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->list_item_2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->list_item_3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->LIST_ITEM_TEXT_VIEW_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .line 124
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 126
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->card_prompt:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptView:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->empty_list_message:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mEmptyListMessageView:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->list_subtext:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mSubtextView:Landroid/widget/TextView;

    .line 129
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->card_prompt_icon:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptIconView:Landroid/widget/ImageView;

    .line 130
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->list_icon:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mListIconView:Landroid/widget/ImageView;

    return-void
.end method

.method setCardPrompt(Ljava/lang/String;)V
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardShoppingList"

    const-string p1, "No card prompt view to update"

    .line 140
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setEmptyListMessage(Ljava/lang/String;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mEmptyListMessageView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardShoppingList"

    const-string p1, "No empty list message view to update"

    .line 148
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 135
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mListIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method setListSubtext(Ljava/lang/String;)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mSubtextView:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const-string p0, "BcSmartspaceCardShoppingList"

    const-string p1, "No subtext view to update"

    .line 199
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 202
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setShoppingItems([Ljava/lang/String;I)V
    .locals 8

    const-string v0, "BcSmartspaceCardShoppingList"

    if-nez p1, :cond_0

    const-string p0, "Shopping list items array is null."

    .line 156
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_0
    sget-object v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->LIST_ITEM_TEXT_VIEW_IDS:[I

    array-length v2, v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_1

    .line 160
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v4, [Ljava/lang/Object;

    array-length p2, v1

    sub-int/2addr v3, p2

    .line 163
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "Missing %d list item view(s) to update"

    .line 160
    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v1, v5

    move v2, v1

    :goto_0
    if-ge v1, v3, :cond_4

    .line 169
    sget-object v6, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->LIST_ITEM_TEXT_VIEW_IDS:[I

    aget v6, v6, v1

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-nez v6, :cond_2

    .line 172
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v4, [Ljava/lang/Object;

    add-int/2addr v1, v4

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v5

    const-string p2, "Missing list item view to update at row: %d"

    .line 172
    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 179
    :cond_2
    array-length v7, p1

    if-ge v1, v7, :cond_3

    .line 180
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    aget-object v7, p1, v1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/16 v7, 0x8

    .line 184
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v7, ""

    .line 185
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    .line 189
    array-length p2, p1

    :cond_5
    if-le p2, v2, :cond_6

    .line 191
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/bcsmartspace/R$string;->smartspace_shopping_list_overflow:I

    new-array v1, v4, [Ljava/lang/Object;

    sub-int/2addr p2, v2

    .line 193
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v5

    .line 191
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->setListSubtext(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)Z
    .locals 3

    .line 65
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getBaseAction()Landroid/app/smartspace/SmartspaceAction;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceAction;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const/4 p3, 0x0

    if-eqz p1, :cond_a

    .line 69
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mEmptyListMessageView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mListIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mSubtextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move v0, p3

    :goto_1
    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 75
    sget-object v2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->LIST_ITEM_TEXT_VIEW_IDS:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 77
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "appIcon"

    .line 81
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    const-string v0, "imageBitmap"

    .line 83
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 85
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->setIconBitmap(Landroid/graphics/Bitmap;)V

    const-string v0, "cardPrompt"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_6

    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->setCardPrompt(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_5

    .line 91
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mCardPromptIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return v2

    :cond_6
    const-string p2, "emptyListString"

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->setEmptyListMessage(Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mEmptyListMessageView:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mListIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return v2

    :cond_7
    const-string p2, "listItems"

    .line 99
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 100
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 102
    array-length v0, p2

    if-nez v0, :cond_8

    return p3

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mListIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, -0x1

    const-string v1, "listSize"

    .line 109
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 107
    invoke-virtual {p0, p2, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->setShoppingItems([Ljava/lang/String;I)V

    const-string p2, "listSubtext"

    .line 111
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 112
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->mSubtextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardShoppingList;->setListSubtext(Ljava/lang/String;)V

    :cond_9
    return v2

    :cond_a
    return p3
.end method
