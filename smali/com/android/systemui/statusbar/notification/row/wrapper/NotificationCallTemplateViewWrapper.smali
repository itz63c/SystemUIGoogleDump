.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "NotificationCallTemplateViewWrapper.kt"


# instance fields
.field private appName:Landroid/view/View;

.field private final callLayout:Lcom/android/internal/widget/CallLayout;

.field private conversationBadgeBg:Landroid/view/View;

.field private conversationIconView:Lcom/android/internal/widget/CachingIconView;

.field private conversationTitleView:Landroid/view/View;

.field private expandBtn:Landroid/view/View;

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

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 37
    sget p3, Lcom/android/systemui/R$dimen;->call_notification_full_height:I

    invoke-static {p1, p3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->minHeightWithActions:I

    .line 38
    check-cast p2, Lcom/android/internal/widget/CallLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->callLayout:Lcom/android/internal/widget/CallLayout;

    return-void
.end method

.method private final resolveViews()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->callLayout:Lcom/android/internal/widget/CallLayout;

    const v1, 0x102025d

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.conversation_icon)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/android/internal/widget/CachingIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    const v1, 0x102025f

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.conversation_icon_badge_bg)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    const v1, 0x102029a

    .line 51
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.expand_button)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->expandBtn:Landroid/view/View;

    const v1, 0x10201da

    .line 52
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "requireViewById(com.android.internal.R.id.app_name_text)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->appName:Landroid/view/View;

    const v1, 0x1020263

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/CallLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "requireViewById(com.android.internal.R.id.conversation_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public disallowSingleClick(FF)Z
    .locals 5

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->expandBtn:Landroid/view/View;

    const/4 v1, 0x0

    const-string v2, "expandBtn"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->expandBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->isOnView(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    move v0, v4

    :goto_0
    if-nez v0, :cond_3

    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->disallowSingleClick(FF)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3

    .line 79
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public getMinLayoutHeight()I
    .locals 0

    .line 84
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->minHeightWithActions:I

    return p0
.end method

.method public onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    const-string v0, "row"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->resolveViews()V

    .line 61
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method protected updateTransformedTypes()V
    .locals 6

    .line 66
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->appName:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationTitleView:Landroid/view/View;

    if-eqz v2, :cond_3

    const/4 v5, 0x1

    aput-object v2, v1, v5

    .line 67
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addTransformedViews([Landroid/view/View;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    if-eqz v2, :cond_2

    aput-object v2, v1, v4

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->conversationBadgeBg:Landroid/view/View;

    if-eqz v2, :cond_1

    aput-object v2, v1, v5

    .line 74
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCallTemplateViewWrapper;->expandBtn:Landroid/view/View;

    if-eqz v2, :cond_0

    aput-object v2, v1, v0

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    return-void

    :cond_0
    const-string p0, "expandBtn"

    .line 74
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string p0, "conversationBadgeBg"

    .line 73
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "conversationIconView"

    .line 72
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string p0, "conversationTitleView"

    .line 69
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string p0, "appName"

    .line 68
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method
