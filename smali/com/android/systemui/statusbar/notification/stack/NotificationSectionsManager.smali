.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationSectionsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationSectionsManager.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 7 SparseArrayUtils.kt\ncom/android/systemui/util/SparseArrayUtilsKt\n+ 8 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,476:1\n1#2:477\n11328#3:478\n11663#3,3:479\n12917#3,3:504\n37#4,2:482\n1267#5,3:484\n1256#5,2:487\n1002#5:491\n1819#6,2:489\n62#7,5:492\n67#7,4:498\n71#7:503\n32#8:497\n33#8:502\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationSectionsManager.kt\ncom/android/systemui/statusbar/notification/stack/NotificationSectionsManager\n*L\n128#1:478\n128#1,3:479\n415#1,3:504\n129#1,2:482\n181#1,3:484\n298#1,2:487\n404#1:491\n346#1,2:489\n409#1,5:492\n409#1,4:498\n409#1:503\n409#1:497\n409#1:502\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;


# instance fields
.field private final alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

.field private final incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field private initialized:Z

.field private final keyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

.field private final logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

.field private mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

.field private parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field private final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

.field private final silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->Companion:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;)V
    .locals 1

    const-string v0, "statusBarStateController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardMediaController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sectionsFeatureManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "incomingHeaderController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "peopleHeaderController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertingHeaderController"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "silentHeaderController"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    .line 61
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    .line 62
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 63
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 64
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 65
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    .line 68
    new-instance p1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    return-void
.end method

.method public static final synthetic access$getBucket(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getParent$p(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method private final decorViewHeaderState(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;",
            ">(TT;)",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "TT;>;"
        }
    .end annotation

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object p0

    .line 230
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$decorViewHeaderState$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V

    return-object v0
.end method

.method private final expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">(TT;)",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "TT;>;"
        }
    .end annotation

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$expandableViewHeaderState$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    return-object v0
.end method

.method public static synthetic getAlertingHeaderView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getBucket(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x6

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_1

    const/4 p0, 0x2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p1, v0, :cond_3

    const/4 p0, 0x4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    if-ne p1, p0, :cond_4

    const/4 p0, 0x5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 158
    :cond_4
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static synthetic getIncomingHeaderView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getPeopleHeaderView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getSilentHeaderView$annotations()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final isUsingMultipleSections()Z
    .locals 1

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNumberOfBuckets()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final logShadeChild(ILandroid/view/View;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logIncomingHeader(I)V

    goto/16 :goto_0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logMediaControls(I)V

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p2, v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logConversationsHeader(I)V

    goto :goto_0

    .line 167
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logAlertingHeader(I)V

    goto :goto_0

    .line 168
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-ne p2, v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logSilentHeader(I)V

    goto :goto_0

    .line 169
    :cond_4
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logOther(ILjava/lang/Class;)V

    goto :goto_0

    .line 171
    :cond_5
    check-cast p2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    .line 172
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v1, 0x4

    if-eq p2, v1, :cond_8

    const/4 v1, 0x5

    if-eq p2, v1, :cond_7

    const/4 v1, 0x6

    if-eq p2, v1, :cond_6

    goto :goto_0

    .line 176
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logSilent(IZ)V

    goto :goto_0

    .line 175
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logAlerting(IZ)V

    goto :goto_0

    .line 174
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logConversation(IZ)V

    goto :goto_0

    .line 173
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logHeadsUp(IZ)V

    :goto_0
    return-void
.end method

.method private final logShadeContents()V
    .locals 4

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 1268
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Landroid/view/View;

    .line 181
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logShadeChild(ILandroid/view/View;)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">(TT;",
            "Landroid/view/LayoutInflater;",
            "I)TT;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    const-string v2, "parent"

    if-nez p1, :cond_1

    :cond_0
    move v3, v0

    goto :goto_1

    .line 113
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 114
    :goto_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_8

    if-ne v3, v4, :cond_0

    if-eqz v4, :cond_4

    .line 115
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 116
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v4, :cond_3

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 119
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p1, :cond_7

    const/4 v4, 0x0

    invoke-virtual {p2, p3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type T of com.android.systemui.statusbar.notification.stack.NotificationSectionsManager.reinflateView"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eq v3, v0, :cond_6

    .line 121
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    :goto_2
    return-object p1

    .line 119
    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private static final updateSectionBoundaries$getSectionState(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Landroid/view/View;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "+",
            "Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-ne p6, v0, :cond_0

    goto :goto_0

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p1

    if-ne p6, p1, :cond_1

    move-object p1, p2

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p1

    if-ne p6, p1, :cond_2

    move-object p1, p3

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p1

    if-ne p6, p1, :cond_3

    move-object p1, p4

    goto :goto_0

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    if-ne p6, p0, :cond_4

    move-object p1, p5

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method


# virtual methods
.method public beginsSection(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eq p1, v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 150
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getBucket(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final createSectionsForBuckets()[Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
    .locals 8

    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNotificationBuckets()[I

    move-result-object v0

    .line 11328
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11663
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    .line 128
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v7, :cond_0

    invoke-direct {v6, v7, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;-><init>(Landroid/view/View;I)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-array p0, v3, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    .line 38
    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, [Lcom/android/systemui/statusbar/notification/stack/NotificationSection;

    return-object p0
.end method

.method public final getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->getHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public final getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->getHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaControlsView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-object p0
.end method

.method public final getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->getHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public final getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->getHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Landroid/view/LayoutInflater;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutInflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialized:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 100
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->initialized:Z

    .line 101
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 102
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->configurationListener:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$configurationListener$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationSectionsManager already initialized"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final reinflateViews(Landroid/view/LayoutInflater;)V
    .locals 4

    const-string v0, "layoutInflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->silentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v2, 0x0

    const-string v3, "parent"

    if-eqz v1, :cond_3

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->reinflateView(Landroid/view/ViewGroup;)V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->alertingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->reinflateView(Landroid/view/ViewGroup;)V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->reinflateView(Landroid/view/ViewGroup;)V

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->incomingHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->reinflateView(Landroid/view/ViewGroup;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    sget v1, Lcom/android/systemui/R$layout;->keyguard_media_header:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateView(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/LayoutInflater;I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->keyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/KeyguardMediaController;->attach(Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    return-void

    .line 138
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 135
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method public final setHeaderForegroundColor(I)V
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setForegroundColor(I)V

    .line 445
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setForegroundColor(I)V

    .line 446
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setForegroundColor(I)V

    :goto_2
    return-void
.end method

.method public final updateFirstAndLastViewsForAllSections([Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationSection;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableView;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "sections"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "children"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p2

    .line 1002
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;

    invoke-direct {v0, p2, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateFirstAndLastViewsForAllSections$$inlined$groupingBy$1;-><init>(Lkotlin/sequences/Sequence;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    .line 410
    sget-object p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 411
    array-length p2, p1

    if-gez p2, :cond_0

    .line 63
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, p2}, Landroid/util/SparseArray;-><init>(I)V

    move-object p2, v1

    .line 66
    :goto_0
    invoke-interface {v0}, Lkotlin/collections/Grouping;->sourceIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 67
    invoke-interface {v0, v2}, Lkotlin/collections/Grouping;->keyOf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 68
    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, p0

    .line 69
    :cond_1
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    .line 412
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->addNotif(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 12918
    :cond_2
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_2
    if-ge v1, p0, :cond_6

    aget-object v3, p1, v1

    .line 416
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getBucket()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds$None;

    .line 417
    :cond_3
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionBounds;->updateSection(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v2, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return v2
.end method

.method public final updateSectionBoundaries()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "test"

    .line 187
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method public final updateSectionBoundaries(Ljava/lang/String;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    const-string v1, "reason"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->isUsingMultipleSections()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStartSectionUpdate(Ljava/lang/String;)V

    .line 256
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_1

    move v10, v9

    goto :goto_0

    :cond_1
    move v10, v8

    .line 257
    :goto_0
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isMediaControlsEnabled()Z

    move-result v11

    .line 259
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mediaControlsView:Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-nez v0, :cond_2

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->expandableViewHeaderState(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v13, v0

    .line 260
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getIncomingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->decorViewHeaderState(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v14, v0

    .line 261
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getPeopleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->decorViewHeaderState(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v15, v0

    .line 262
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getAlertingHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_5

    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->decorViewHeaderState(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v6, v0

    .line 263
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->decorViewHeaderState(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    move-object v5, v0

    :goto_5
    const/4 v4, 0x5

    new-array v0, v4, [Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    aput-object v13, v0, v8

    aput-object v14, v0, v9

    const/4 v3, 0x2

    aput-object v15, v0, v3

    const/4 v1, 0x3

    aput-object v6, v0, v1

    const/4 v2, 0x4

    aput-object v5, v0, v2

    .line 274
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object v1

    .line 286
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const-string v16, "parent"

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v9

    const/4 v8, -0x1

    if-gt v8, v0, :cond_2c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_6
    add-int/lit8 v12, v0, -0x1

    .line 287
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v2, :cond_2b

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_7

    move/from16 v21, v0

    move-object v8, v1

    move-object v0, v2

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    goto :goto_a

    .line 290
    :cond_7
    invoke-direct {v7, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logShadeChild(ILandroid/view/View;)V

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object v8, v1

    move-object v1, v13

    move-object/from16 v22, v2

    move-object v2, v14

    move-object v3, v15

    move-object v4, v6

    move-object/from16 v20, v5

    move-object/from16 v23, v6

    move-object/from16 v6, v22

    .line 292
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->updateSectionBoundaries$getSectionState(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;Landroid/view/View;)Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_9

    .line 293
    :cond_8
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setCurrentPosition(Ljava/lang/Integer;)V

    .line 297
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1$1$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$updateSectionBoundaries$1$1$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;)V

    invoke-static {v8, v1}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->takeUntil(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    .line 298
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    goto :goto_8

    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_8
    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_7

    .line 299
    :cond_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_9
    move-object/from16 v0, v22

    .line 302
    :goto_a
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    goto :goto_b

    :cond_b
    const/4 v1, 0x0

    :goto_b
    if-nez v1, :cond_d

    :cond_c
    const/4 v1, 0x0

    goto :goto_d

    .line 303
    :cond_d
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_e

    move v2, v9

    goto :goto_c

    :cond_e
    const/4 v2, 0x0

    :goto_c
    if-nez v2, :cond_c

    :goto_d
    if-nez v18, :cond_14

    if-nez v17, :cond_f

    :goto_e
    const/4 v2, 0x0

    goto :goto_11

    .line 306
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-nez v1, :cond_10

    const/4 v3, 0x0

    goto :goto_f

    .line 307
    :cond_10
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    :goto_f
    if-nez v3, :cond_11

    goto :goto_e

    :cond_11
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v3

    if-ge v2, v3, :cond_12

    move v2, v9

    goto :goto_10

    :cond_12
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 308
    :goto_11
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_12

    :cond_13
    const/16 v18, 0x0

    goto :goto_13

    :cond_14
    :goto_12
    move/from16 v18, v9

    :goto_13
    if-eqz v18, :cond_17

    if-nez v1, :cond_15

    const/4 v2, 0x0

    goto :goto_14

    .line 312
    :cond_15
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    :goto_14
    if-nez v2, :cond_16

    goto :goto_15

    :cond_16
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setBucket(I)V

    goto :goto_16

    :cond_17
    :goto_15
    const/4 v3, 0x2

    :goto_16
    if-eqz v17, :cond_19

    if-eqz v0, :cond_18

    if-eqz v1, :cond_19

    .line 318
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_19

    :cond_18
    move v0, v9

    goto :goto_17

    :cond_19
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_26

    if-eqz v10, :cond_26

    if-nez v17, :cond_1a

    goto :goto_18

    .line 321
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1c

    if-nez v14, :cond_1b

    goto/16 :goto_1d

    :cond_1b
    add-int/lit8 v0, v21, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v14, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_1d

    :cond_1c
    :goto_18
    if-nez v17, :cond_1d

    const/4 v2, 0x4

    goto :goto_1a

    .line 322
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1f

    if-nez v15, :cond_1e

    goto :goto_19

    :cond_1e
    add-int/lit8 v0, v21, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v15, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    :goto_19
    move-object/from16 v5, v20

    move-object/from16 v0, v23

    goto :goto_1e

    :cond_1f
    :goto_1a
    if-nez v17, :cond_20

    move-object/from16 v0, v23

    const/4 v4, 0x5

    goto :goto_1b

    .line 323
    :cond_20
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_22

    move-object/from16 v0, v23

    if-nez v0, :cond_21

    goto :goto_1c

    :cond_21
    add-int/lit8 v5, v21, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_1c

    :cond_22
    move-object/from16 v0, v23

    :goto_1b
    if-nez v17, :cond_23

    goto :goto_1c

    .line 324
    :cond_23
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_25

    move-object/from16 v5, v20

    if-nez v5, :cond_24

    goto :goto_1f

    :cond_24
    add-int/lit8 v6, v21, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    goto :goto_1f

    :cond_25
    :goto_1c
    move-object/from16 v5, v20

    goto :goto_1f

    :cond_26
    :goto_1d
    move-object/from16 v5, v20

    move-object/from16 v0, v23

    const/4 v2, 0x4

    :goto_1e
    const/4 v4, 0x5

    :goto_1f
    if-nez v1, :cond_27

    :goto_20
    const/4 v1, -0x1

    goto :goto_23

    :cond_27
    if-nez v19, :cond_29

    .line 331
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v6

    if-ne v6, v2, :cond_28

    goto :goto_21

    :cond_28
    const/16 v19, 0x0

    goto :goto_22

    :cond_29
    :goto_21
    move/from16 v19, v9

    .line 332
    :goto_22
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getBucket()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    goto :goto_20

    :goto_23
    if-le v1, v12, :cond_2a

    goto :goto_24

    :cond_2a
    move-object v6, v0

    move v0, v12

    move-object/from16 v24, v8

    move v8, v1

    move-object/from16 v1, v24

    goto/16 :goto_6

    .line 287
    :cond_2b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2c
    move-object v0, v6

    move/from16 v24, v8

    move-object v8, v1

    move/from16 v1, v24

    :goto_24
    if-nez v13, :cond_2d

    goto :goto_26

    :cond_2d
    if-eqz v11, :cond_2e

    const/4 v2, 0x0

    .line 335
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_25

    :cond_2e
    const/4 v2, 0x0

    :goto_25
    invoke-interface {v13, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->setTargetPosition(Ljava/lang/Integer;)V

    .line 337
    :goto_26
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    const-string v4, "New header target positions:"

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStr(Ljava/lang/String;)V

    .line 338
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-nez v13, :cond_2f

    :goto_27
    move v4, v1

    goto :goto_28

    :cond_2f
    invoke-interface {v13}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_30

    goto :goto_27

    :cond_30
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_28
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logMediaControls(I)V

    .line 339
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-nez v14, :cond_31

    :goto_29
    move v4, v1

    goto :goto_2a

    :cond_31
    invoke-interface {v14}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_32

    goto :goto_29

    :cond_32
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2a
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logIncomingHeader(I)V

    .line 340
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-nez v15, :cond_33

    :goto_2b
    move v4, v1

    goto :goto_2c

    :cond_33
    invoke-interface {v15}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_34

    goto :goto_2b

    :cond_34
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2c
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logConversationsHeader(I)V

    .line 341
    iget-object v2, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-nez v0, :cond_35

    :goto_2d
    move v0, v1

    goto :goto_2e

    :cond_35
    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_36

    goto :goto_2d

    :cond_36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2e
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logAlertingHeader(I)V

    .line 342
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    if-nez v5, :cond_37

    goto :goto_2f

    :cond_37
    invoke-interface {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->getTargetPosition()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_38

    goto :goto_2f

    :cond_38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_2f
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logSilentHeader(I)V

    .line 346
    invoke-static {v8}, Lkotlin/sequences/SequencesKt;->asIterable(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;

    .line 346
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$SectionUpdateState;->adjustViewPosition()V

    goto :goto_30

    .line 348
    :cond_39
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    const-string v1, "Final order:"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStr(Ljava/lang/String;)V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logShadeContents()V

    .line 350
    iget-object v0, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->logger:Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    const-string v1, "Section boundary update complete"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;->logStr(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getSilentHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    move-result-object v0

    if-nez v0, :cond_3a

    goto :goto_31

    .line 354
    :cond_3a
    iget-object v1, v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->parent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_3b

    .line 355
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result v1

    .line 356
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setAreThereDismissableGentleNotifs(Z)V

    .line 357
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_31
    return-void

    .line 354
    :cond_3b
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3c
    const/4 v0, 0x0

    .line 286
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
