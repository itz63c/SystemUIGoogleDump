.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ConversationNotifications.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/Map$Entry<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;->invoke(Ljava/util/Map$Entry;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/util/Map$Entry;)Lkotlin/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    const-string v0, "$dstr$key$_u24__u24"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$onNotificationPanelExpandStateChanged$expanded$1;->this$0:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->access$getNotificationEntryManager$p(Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0
.end method
