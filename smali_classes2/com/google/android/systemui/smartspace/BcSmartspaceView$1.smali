.class Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BcSmartspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/smartspace/SmartspaceTarget;

    .line 170
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getActionChips()Ljava/util/List;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result p0

    if-eqz p1, :cond_0

    .line 173
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 88
    check-cast p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->onBindViewHolder(Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;I)V
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/smartspace/SmartspaceTarget;

    .line 137
    iget-object v0, p1, Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    .line 138
    new-instance v1, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    invoke-direct {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;-><init>()V

    .line 140
    invoke-static {p2}, Lcom/google/android/systemui/smartspace/InstanceId;->create(Landroid/app/smartspace/SmartspaceTarget;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setInstanceId(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {p2}, Landroid/app/smartspace/SmartspaceTarget;->getFeatureType()I

    move-result v2

    .line 141
    invoke-static {v2}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingCardType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setLoggingCardType(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 144
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v3}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)F

    move-result v3

    .line 143
    invoke-static {v2, v3}, Lcom/google/android/systemui/smartspace/BcSmartSpaceUtil;->getLoggingDisplaySurface(Ljava/lang/String;F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setDisplaySurface(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setRank(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    .line 146
    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->setCardinality(I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo$Builder;->build()Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;

    move-result-object p1

    .line 150
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$400(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;)V

    move-object v1, v2

    .line 148
    :goto_0
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSmartspaceTarget(Landroid/app/smartspace/SmartspaceTarget;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;Lcom/google/android/systemui/smartspace/BcSmartspaceCardLoggingInfo;)V

    .line 152
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$200(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-le p1, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 154
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x1010435

    invoke-static {p1, v2}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    goto :goto_2

    .line 155
    :cond_2
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$500(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)I

    move-result p1

    .line 153
    :goto_2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->useBackground(ZI)V

    .line 156
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$300(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDozeAmount(F)V

    .line 157
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$600(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$700(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setDnd(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$800(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$900(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setNextAlarm(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$1000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-static {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$000(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    move-result-object p1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_6

    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    const/4 v1, 0x4

    if-eq p2, v1, :cond_4

    const/16 v1, 0x9

    if-eq p2, v1, :cond_3

    const/16 v1, 0xa

    if-eq p2, v1, :cond_2

    const/16 v1, 0xd

    if-eq p2, v1, :cond_1

    const/16 v1, 0xe

    if-eq p2, v1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 107
    :cond_0
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_loyalty:I

    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    goto :goto_0

    .line 110
    :cond_1
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_shopping_list:I

    .line 111
    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    goto :goto_0

    .line 117
    :cond_2
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_weather_forecast:I

    .line 118
    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    goto :goto_0

    .line 114
    :cond_3
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_sports:I

    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    goto :goto_0

    .line 104
    :cond_4
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_flight:I

    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    goto :goto_0

    .line 100
    :cond_5
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_generic_landscape_image:I

    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    goto :goto_0

    .line 97
    :cond_6
    iget-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    sget v1, Lcom/android/systemui/bcsmartspace/R$layout;->smartspace_card_combination:I

    invoke-static {p2, v1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$100(Lcom/google/android/systemui/smartspace/BcSmartspaceView;I)Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;

    move-result-object p2

    .line 127
    :goto_0
    invoke-virtual {p1, p2}, Lcom/google/android/systemui/smartspace/BcSmartspaceCard;->setSecondaryCard(Lcom/google/android/systemui/smartspace/BcSmartspaceCardSecondary;)V

    .line 128
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$1;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    new-instance p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;

    invoke-direct {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;-><init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V

    return-object p0
.end method
