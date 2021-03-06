.class public final Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;
.super Ljava/lang/Object;
.source "SmartRepliesAndActionsInflater.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SmartReplyViewInflater"

    const/4 v1, 0x3

    .line 460
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->DEBUG:Z

    return-void
.end method

.method public static final synthetic access$executeWhenUnlocked(Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;ZLkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->executeWhenUnlocked(Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;ZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getDEBUG$p$s-1607655527()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->DEBUG:Z

    return v0
.end method

.method public static final synthetic access$startPendingIntentDismissingKeyguard(Lcom/android/systemui/plugins/ActivityStarter;Landroid/app/PendingIntent;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->startPendingIntentDismissingKeyguard(Lcom/android/systemui/plugins/ActivityStarter;Landroid/app/PendingIntent;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final areSuggestionsSimilar(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartReplies()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartReplies()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartActions()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->getSmartActions()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationUiAdjustment;->areDifferent(Ljava/util/List;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    return v0
.end method

.method private static final executeWhenUnlocked(Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;ZLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 466
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$sam$com_android_systemui_plugins_ActivityStarter_OnDismissAction$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;->executeWhenUnlocked(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Z)V

    return-void
.end method

.method public static final shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z
    .locals 2

    const-string v0, "entry"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartRepliesAndActions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 59
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez p1, :cond_0

    return v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.remoteInputSpinner"

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.hideSmartReplies"

    .line 71
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static final startPendingIntentDismissingKeyguard(Lcom/android/systemui/plugins/ActivityStarter;Landroid/app/PendingIntent;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Landroid/app/PendingIntent;",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 473
    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$startPendingIntentDismissingKeyguard$1;

    invoke-direct {v0, p3}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt$startPendingIntentDismissingKeyguard$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1, v0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
