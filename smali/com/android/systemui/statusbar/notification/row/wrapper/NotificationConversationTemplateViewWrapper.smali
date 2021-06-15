.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationConversationTemplateViewWrapper.kt"


# instance fields
.field private appName:Landroid/view/View;

.field private conversationBadgeBg:Landroid/view/View;

.field private conversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private final conversationLayout:Lcom/android/internal/widget/ConversationLayout;

.field private conversationTitleView:Landroid/view/View;

.field private expandBtn:Landroid/view/View;

.field private expandBtnContainer:Landroid/view/View;

.field private facePileBottom:Landroid/view/View;

.field private facePileBottomBg:Landroid/view/View;

.field private facePileTop:Landroid/view/View;

.field private imageMessageContainer:Landroid/view/ViewGroup;

.field private importanceRing:Landroid/view/View;

.field private messagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field private final minHeightWithActions:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "row"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 41
    sget p3, Lcom/android/systemui/R$dimen;->notification_messaging_actions_min_height:I

    .line 39
    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->minHeightWithActions:I

    .line 43
    check-cast p2, Lcom/android/internal/widget/ConversationLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    return-void
.end method

.method private final resolveViews()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    const-string v1, "conversationLayout.messagingLinearLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->messagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->getImageMessageContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const-string v1, "conversationLayout.imageMessageContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->imageMessageContainer:Landroid/view/ViewGroup;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    const v1, 0x102025e

    .line 62
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.conversation_icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v1, 0x1020260

    .line 64
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.conversation_icon_badge_bg)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    const v1, 0x102029a

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.expand_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandBtn:Landroid/view/View;

    const v1, 0x102029c

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.expand_button_container)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandBtnContainer:Landroid/view/View;

    const v1, 0x1020261

    .line 67
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.conversation_icon_badge_ring)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->importanceRing:Landroid/view/View;

    const v1, 0x10201db

    .line 68
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.app_name_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->appName:Landroid/view/View;

    const v1, 0x1020264

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.conversation_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    const v1, 0x102025c

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileTop:Landroid/view/View;

    const v1, 0x102025a

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottom:Landroid/view/View;

    const v1, 0x102025b

    .line 73
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ConversationLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottomBg:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getMinLayoutHeight()I
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 135
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->minHeightWithActions:I

    goto :goto_0

    .line 137
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->getMinLayoutHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getShelfTransformationTarget()Landroid/view/View;
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ConversationLayout;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const/4 v1, 0x0

    const-string v2, "conversationIconView"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/widget/CachingIconView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_3
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->getShelfTransformationTarget()Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->resolveViews()V

    .line 81
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public setRemoteInputVisible(Z)V
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->showHistoricMessages(Z)V

    return-void
.end method

.method public updateExpandability(ZLandroid/view/View$OnClickListener;Z)V
    .locals 0

    const-string p3, "onClickListener"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationLayout:Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/ConversationLayout;->updateExpandability(ZLandroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 7

    .line 86
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->messagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->appName:Landroid/view/View;

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 91
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    if-eqz v2, :cond_5

    const/4 v6, 0x2

    aput-object v2, v1, v6

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addTransformedViews([Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->imageMessageContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->setCustomImageMessageTransform(Lcom/android/systemui/statusbar/ViewTransformationHelper;Landroid/view/ViewGroup;)V

    const/4 v1, 0x7

    new-array v1, v1, [Landroid/view/View;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz v2, :cond_3

    aput-object v2, v1, v4

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    if-eqz v2, :cond_2

    aput-object v2, v1, v5

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->expandBtn:Landroid/view/View;

    if-eqz v2, :cond_1

    aput-object v2, v1, v6

    .line 99
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->importanceRing:Landroid/view/View;

    if-eqz v2, :cond_0

    aput-object v2, v1, v0

    const/4 v0, 0x4

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileTop:Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v0, 0x5

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottom:Landroid/view/View;

    aput-object v2, v1, v0

    const/4 v0, 0x6

    .line 102
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationConversationTemplateViewWrapper;->facePileBottomBg:Landroid/view/View;

    aput-object v2, v1, v0

    .line 95
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "importanceRing"

    .line 99
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "expandBtn"

    .line 98
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "conversationBadgeBg"

    .line 97
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string p0, "conversationIconView"

    .line 96
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "imageMessageContainer"

    .line 93
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string p0, "conversationTitleView"

    .line 91
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string p0, "appName"

    .line 90
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    const-string p0, "messagingLinearLayout"

    .line 89
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
