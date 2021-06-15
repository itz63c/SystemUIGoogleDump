.class public Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;
.super Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;
.source "BcSmartspaceCardCombination.java"


# instance fields
.field private mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFirstSubCardIcon:Landroid/widget/ImageView;

.field private mFirstSubCardText:Landroid/widget/TextView;

.field private mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mSecondSubCardIcon:Landroid/widget/ImageView;

.field private mSecondSubCardText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public fitToSize(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/bcsmartspace/R$dimen;->enhanced_smartspace_card_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 129
    :goto_0
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 46
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 48
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->first_sub_card:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    .line 50
    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->sub_card_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardText:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->sub_card_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardIcon:Landroid/widget/ImageView;

    .line 53
    :cond_0
    sget v0, Lcom/android/systemui/bcsmartspace/R$id;->second_sub_card:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1

    .line 55
    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->sub_card_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardText:Landroid/widget/TextView;

    .line 56
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/android/systemui/bcsmartspace/R$id;->sub_card_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardIcon:Landroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method setSmartspaceActions(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)Z
    .locals 10

    .line 65
    invoke-virtual {p1}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_4

    .line 69
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/smartspace/SmartspaceAction;

    const/4 v9, 0x1

    .line 70
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    if-eqz v2, :cond_6

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 75
    :cond_1
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v6, "BcSmartspaceCardCombination"

    move-object v4, p1

    move-object v5, v2

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ljava/lang/String;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    .line 77
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCard:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v6, "BcSmartspaceCardCombination"

    move-object v5, v0

    invoke-static/range {v3 .. v8}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->setOnClickListener(Landroid/view/View;Landroid/app/smartspace/SmartspaceTarget;Landroid/app/smartspace/SmartspaceAction;Ljava/lang/String;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    .line 82
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 81
    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 p2, 0x8

    if-eqz p1, :cond_2

    .line 84
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move p1, v9

    goto :goto_0

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    move p1, v1

    .line 91
    :goto_0
    invoke-virtual {v2}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    .line 92
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardText:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move p1, v9

    goto :goto_1

    .line 97
    :cond_3
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mFirstSubCardText:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    :goto_1
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    invoke-static {p3, v2}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getIconDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 104
    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move p3, v9

    goto :goto_2

    .line 108
    :cond_4
    iget-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    move p3, v1

    .line 111
    :goto_2
    invoke-virtual {v0}, Landroid/app/smartspace/SmartspaceAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 113
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardText:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move p3, v9

    goto :goto_3

    .line 117
    :cond_5
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardCombination;->mSecondSubCardText:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    if-eqz p1, :cond_6

    if-eqz p3, :cond_6

    move v1, v9

    :cond_6
    :goto_4
    return v1
.end method
