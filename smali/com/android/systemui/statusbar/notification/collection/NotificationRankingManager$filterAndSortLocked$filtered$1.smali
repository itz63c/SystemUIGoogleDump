.class final synthetic Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$filterAndSortLocked$filtered$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "NotificationRankingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->filterAndSortLocked(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;)V
    .locals 7

    const-class v3, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    const/4 v1, 0x1

    const-string v4, "filter"

    const-string v5, "filter(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager$filterAndSortLocked$filtered$1;->invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;->access$filter(Lcom/android/systemui/statusbar/notification/collection/NotificationRankingManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method
