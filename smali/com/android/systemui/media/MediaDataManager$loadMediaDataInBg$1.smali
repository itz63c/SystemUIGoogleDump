.class final Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;
.super Ljava/lang/Object;
.source "MediaDataManager.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaDataManager;->loadMediaDataInBg(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $actionIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/media/MediaAction;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $actionsToShowCollapsed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $app:Ljava/lang/String;

.field final synthetic $artWorkIcon:Landroid/graphics/drawable/Icon;

.field final synthetic $artist:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $isLocalSession:Z

.field final synthetic $isPlaying:Ljava/lang/Boolean;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic $notif:Landroid/app/Notification;

.field final synthetic $oldKey:Ljava/lang/String;

.field final synthetic $sbn:Landroid/service/notification/StatusBarNotification;

.field final synthetic $smallIcon:Landroid/graphics/drawable/Icon;

.field final synthetic $song:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $token:Landroid/media/session/MediaSession$Token;

.field final synthetic this$0:Lcom/android/systemui/media/MediaDataManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaDataManager;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Landroid/graphics/drawable/Icon;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Landroid/media/session/MediaSession$Token;Landroid/app/Notification;ZLjava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Icon;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/util/List<",
            "Lcom/android/systemui/media/MediaAction;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/media/session/MediaSession$Token;",
            "Landroid/app/Notification;",
            "Z",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iput-object p2, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$oldKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p5, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$app:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$smallIcon:Landroid/graphics/drawable/Icon;

    iput-object p7, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p8, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    iput-object p10, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionIcons:Ljava/util/List;

    iput-object p11, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionsToShowCollapsed:Ljava/util/List;

    iput-object p12, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$token:Landroid/media/session/MediaSession$Token;

    iput-object p13, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$notif:Landroid/app/Notification;

    iput-boolean p14, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$isLocalSession:Z

    iput-object p15, p0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$isPlaying:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 30

    move-object/from16 v0, p0

    .line 519
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataManager;->access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object/from16 v19, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v1

    move-object/from16 v19, v1

    .line 520
    :goto_0
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataManager;->access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getHasCheckedForResume()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23

    .line 521
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v1}, Lcom/android/systemui/media/MediaDataManager;->access$getMediaEntries$p(Lcom/android/systemui/media/MediaDataManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v1

    :goto_2
    move/from16 v18, v1

    .line 522
    iget-object v1, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    iget-object v2, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$oldKey:Ljava/lang/String;

    new-instance v14, Lcom/android/systemui/media/MediaData;

    move-object v3, v14

    iget-object v4, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    move-result v4

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->this$0:Lcom/android/systemui/media/MediaDataManager;

    invoke-static {v6}, Lcom/android/systemui/media/MediaDataManager;->access$getBgColor$p(Lcom/android/systemui/media/MediaDataManager;)I

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$app:Ljava/lang/String;

    .line 523
    iget-object v8, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$smallIcon:Landroid/graphics/drawable/Icon;

    iget-object v9, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artist:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v9, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    iget-object v10, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$song:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    iget-object v11, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$artWorkIcon:Landroid/graphics/drawable/Icon;

    iget-object v12, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionIcons:Ljava/util/List;

    .line 524
    iget-object v13, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$actionsToShowCollapsed:Ljava/util/List;

    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v28, v1

    move-object v1, v14

    move-object v14, v5

    move-object/from16 v16, v15

    const-string v15, "sbn.packageName"

    invoke-static {v5, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v15, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$token:Landroid/media/session/MediaSession$Token;

    move-object/from16 v5, v16

    move-object/from16 v29, v5

    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$notif:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v5

    const/16 v17, 0x0

    .line 525
    iget-boolean v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$isLocalSession:Z

    move/from16 v20, v5

    const/16 v21, 0x0

    .line 526
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$key:Ljava/lang/String;

    move-object/from16 v22, v5

    .line 527
    iget-object v5, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$isPlaying:Ljava/lang/Boolean;

    move-object/from16 v24, v5

    iget-object v0, v0, Lcom/android/systemui/media/MediaDataManager$loadMediaDataInBg$1;->$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v25

    const/high16 v26, 0x20000

    const/16 v27, 0x0

    move-object/from16 v0, v29

    const/4 v5, 0x1

    .line 522
    invoke-direct/range {v3 .. v27}, Lcom/android/systemui/media/MediaData;-><init>(IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v3, v28

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method
