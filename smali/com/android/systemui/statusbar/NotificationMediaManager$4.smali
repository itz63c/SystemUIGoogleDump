.class Lcom/android/systemui/statusbar/NotificationMediaManager$4;
.super Ljava/lang/Object;
.source "NotificationMediaManager.java"

# interfaces
.implements Lcom/android/systemui/media/MediaDataManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;->setupNotifPipeline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method public static synthetic $r8$lambda$FhENXDi1Z7Qff0Ka3alSoENYe5I(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->lambda$onMediaDataRemoved$0(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$f9afLNc5c5YEwy7CeAq77j9i7gY(Lcom/android/systemui/statusbar/NotificationMediaManager$4;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->lambda$onMediaDataRemoved$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onMediaDataRemoved$0(Ljava/lang/String;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 282
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onMediaDataRemoved$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$900(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    .line 288
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$800(Lcom/android/systemui/statusbar/NotificationMediaManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object p0

    .line 287
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;)V

    return-void
.end method


# virtual methods
.method public onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    return-void
.end method

.method public onMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$4;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$700(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v0

    .line 281
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 283
    invoke-interface {p1}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationMediaManager$4-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager$4;)V

    .line 284
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
