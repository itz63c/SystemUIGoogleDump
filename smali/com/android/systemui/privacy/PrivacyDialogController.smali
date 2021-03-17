.class public final Lcom/android/systemui/privacy/PrivacyDialogController;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/privacy/PrivacyDialogController$Companion;,
        Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDialogController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDialogController.kt\ncom/android/systemui/privacy/PrivacyDialogController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,266:1\n1445#2:267\n1470#2,3:268\n1473#2,3:278\n734#2:284\n825#2,2:285\n1022#2:287\n1865#2,14:288\n355#3,7:271\n46#4:281\n66#4,2:282\n68#4,3:302\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDialogController.kt\ncom/android/systemui/privacy/PrivacyDialogController\n*L\n239#1:267\n239#1,3:268\n239#1,3:278\n240#1:284\n240#1,2:285\n242#1:287\n244#1,14:288\n239#1,7:271\n239#1:281\n239#1,2:282\n239#1,3:302\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/privacy/PrivacyDialogController$Companion;


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final backgroundExecutor:Ljava/util/concurrent/Executor;

.field private dialog:Landroid/app/Dialog;

.field private final dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final permissionManager:Landroid/permission/PermissionManager;

.field private final privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final uiExecutor:Ljava/util/concurrent/Executor;

.field private final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/privacy/PrivacyDialogController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/privacy/PrivacyDialogController;->Companion:Lcom/android/systemui/privacy/PrivacyDialogController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 12

    const-string v0, "permissionManager"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyItemController"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userTracker"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyLogger"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/android/systemui/privacy/PrivacyDialogControllerKt;->access$getDefaultDialogProvider$p$s-1011087083()Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;

    move-result-object v11

    move-object v1, p0

    .line 83
    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/privacy/PrivacyDialogController;-><init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/permission/PermissionManager;Landroid/content/pm/PackageManager;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;)V
    .locals 1

    const-string v0, "permissionManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyItemController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userTracker"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityStarter"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundExecutor"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiExecutor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "privacyLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogProvider"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    .line 62
    iput-object p3, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 63
    iput-object p4, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 64
    iput-object p5, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 65
    iput-object p6, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 66
    iput-object p7, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 67
    iput-object p8, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 68
    iput-object p9, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 69
    iput-object p10, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

    .line 102
    new-instance p1, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    return-void
.end method

.method public static final synthetic access$filterAndSelect(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyDialogController;->filterAndSelect(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$filterType(Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/PrivacyType;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyDialogController;->filterType(Lcom/android/systemui/privacy/PrivacyType;)Lcom/android/systemui/privacy/PrivacyType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDialog$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static final synthetic access$getDialogProvider$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialogProvider:Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;

    return-object p0
.end method

.method public static final synthetic access$getLabelForPackage(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/privacy/PrivacyDialogController;->getLabelForPackage(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnDialogDismissed$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->onDialogDismissed:Lcom/android/systemui/privacy/PrivacyDialogController$onDialogDismissed$1;

    return-object p0
.end method

.method public static final synthetic access$getPrivacyLogger$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/privacy/logging/PrivacyLogger;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    return-object p0
.end method

.method public static final synthetic access$getUiExecutor$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->uiExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static final synthetic access$getUserTracker$p(Lcom/android/systemui/privacy/PrivacyDialogController;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method public static final synthetic access$permGroupToPrivacyType(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/privacy/PrivacyDialogController;->permGroupToPrivacyType(Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyType;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$permGroupUsage(Lcom/android/systemui/privacy/PrivacyDialogController;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->permGroupUsage()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setDialog$p(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public static final synthetic access$startActivity(Lcom/android/systemui/privacy/PrivacyDialogController;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/privacy/PrivacyDialogController;->startActivity(Ljava/lang/String;I)V

    return-void
.end method

.method private final filterAndSelect(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;"
        }
    .end annotation

    .line 1445
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1471
    move-object v1, v0

    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 239
    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getType()Lcom/android/systemui/privacy/PrivacyType;

    move-result-object v1

    .line 355
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 1473
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_1
    invoke-static {p0}, Lkotlin/collections/MapsKt;->toSortedMap(Ljava/util/Map;)Ljava/util/SortedMap;

    move-result-object p0

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "elements"

    .line 240
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 240
    invoke-virtual {v4}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getActive()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 241
    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 1022
    new-instance v0, Lcom/android/systemui/privacy/PrivacyDialogController$filterAndSelect$lambda-6$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/android/systemui/privacy/PrivacyDialogController$filterAndSelect$lambda-6$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 1865
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1866
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_3

    .line 1867
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1868
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    .line 1869
    :cond_6
    move-object v3, v1

    check-cast v3, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 244
    invoke-virtual {v3}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getLastActiveTimestamp()J

    move-result-wide v3

    .line 1871
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 1872
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    .line 244
    invoke-virtual {v6}, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;->getLastActiveTimestamp()J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_8

    move-object v1, v5

    move-wide v3, v6

    .line 1877
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 244
    :goto_3
    check-cast v1, Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;

    if-nez v1, :cond_9

    move-object v0, v2

    goto :goto_4

    .line 245
    :cond_9
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_4
    if-nez v0, :cond_a

    .line 246
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 68
    :cond_a
    :goto_5
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto/16 :goto_1

    :cond_b
    return-object p1
.end method

.method private final filterType(Lcom/android/systemui/privacy/PrivacyType;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 219
    :cond_1
    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    if-ne p1, v1, :cond_3

    .line 220
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    sget-object v1, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :goto_0
    move-object v0, p1

    :goto_1
    return-object v0
.end method

.method private final getLabelForPackage(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 2

    .line 197
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    .line 198
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 199
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    const-string/jumbo p2, "{\n            packageManager\n                    .getApplicationInfoAsUser(packageName, 0, UserHandle.getUserId(uid))\n                    .loadLabel(packageManager)\n        }"

    .line 196
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    const-string p0, "Label not found for: "

    .line 201
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "PrivacyDialogController"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method private final permGroupToPrivacyType(Ljava/lang/String;)Lcom/android/systemui/privacy/PrivacyType;
    .locals 1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x440149cd

    if-eq p0, v0, :cond_4

    const v0, 0x31640343

    if-eq p0, v0, :cond_2

    const v0, 0x5e404d38

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "android.permission-group.MICROPHONE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_1

    :cond_2
    const-string p0, "android.permission-group.LOCATION"

    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    .line 210
    :cond_3
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_LOCATION:Lcom/android/systemui/privacy/PrivacyType;

    goto :goto_1

    :cond_4
    const-string p0, "android.permission-group.CAMERA"

    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    .line 208
    :cond_5
    sget-object p0, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    :goto_1
    return-object p0
.end method

.method private final permGroupUsage()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/permission/PermGroupUsage;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->permissionManager:Landroid/permission/PermissionManager;

    invoke-virtual {p0}, Landroid/permission/PermissionManager;->getIndicatorAppOpUsageData()Ljava/util/List;

    move-result-object p0

    const-string v0, "permissionManager.indicatorAppOpUsageData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final startActivity(Ljava/lang/String;I)V
    .locals 3

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 112
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "android.intent.extra.USER"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 114
    iget-object v1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->privacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logStartSettingsActivityFromDialog(Ljava/lang/String;I)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isUnlocked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 117
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->hide()V

    .line 120
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x1

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$startActivity$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    return-void
.end method


# virtual methods
.method public final dismissDialog()V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Landroid/app/Dialog;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public final showDialog(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/privacy/PrivacyDialogController;->dismissDialog()V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
