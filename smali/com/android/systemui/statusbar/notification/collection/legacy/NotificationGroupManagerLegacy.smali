.class public Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;
.super Ljava/lang/Object;
.source "NotificationGroupManagerLegacy.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/notification/collection/render/GroupMembershipManager;
.implements Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;,
        Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;
    }
.end annotation


# instance fields
.field private mBarState:I

.field private final mBubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private final mExpansionChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupChangeListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsUpdatingUnchangedGroup:Z

.field private mIsolatedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private final mPeopleNotificationIdentifier:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Ldagger/Lazy;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;)V"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    .line 63
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mExpansionChangeListeners:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    const/4 v0, -0x1

    .line 68
    iput v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBarState:I

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    .line 78
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 79
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mPeopleNotificationIdentifier:Ldagger/Lazy;

    .line 80
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBubblesOptional:Ljava/util/Optional;

    return-void
.end method

.method private getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method private getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_0
    return-object p0
.end method

.method private getNumberOfIsolatedChildren(Ljava/lang/String;)I
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 277
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I
    .locals 1

    .line 347
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result v0

    .line 348
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_0

    .line 349
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method private hasIsolatedChildren(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z
    .locals 0

    .line 271
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getNumberOfIsolatedChildren(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGroupChild(Ljava/lang/String;ZZ)Z
    .locals 0

    .line 524
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method private isGroupNotFullyVisible(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z
    .locals 0

    .line 620
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isGroupNotFullyVisible()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isGroupSuppressed(Ljava/lang/String;)Z
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_0

    .line 355
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isIsolated(Ljava/lang/String;)Z
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 332
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getTotalNumberOfChildren(Landroid/service/notification/StatusBarNotification;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 3

    .line 569
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 572
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    .line 582
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    .line 583
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setDebugThrowable(Ljava/lang/Throwable;)V

    .line 193
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    .line 195
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez v2, :cond_1

    .line 198
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;-><init>()V

    .line 199
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    .line 202
    invoke-interface {v4, v2, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupCreated(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_4

    .line 206
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_3

    if-eq v0, p1, :cond_3

    .line 208
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getDebugThrowable()Ljava/lang/Throwable;

    move-result-object v1

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inconsistent entries found with the same key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "existing removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " added removed"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "NotificationGroupManager"

    .line 209
    invoke-static {v3, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    :cond_3
    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    goto :goto_4

    .line 218
    :cond_4
    iput-object p1, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 219
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->areChildrenExpanded()Z

    move-result p1

    iput-boolean p1, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    .line 220
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    .line 221
    iget-object p1, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 222
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    .line 223
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 224
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 225
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_2

    .line 227
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    .line 228
    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 150
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    .line 151
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    .line 150
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Ljava/lang/String;ZZ)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 166
    iget-object p3, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 168
    iput-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 170
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    .line 171
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 172
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    .line 175
    invoke-interface {p1, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupRemoved(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V
    .locals 2

    .line 125
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    .line 126
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mExpansionChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;

    .line 128
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;->onGroupExpansionChange(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setStatusBarState(I)V
    .locals 1

    .line 359
    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBarState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->collapseGroups()V

    :cond_0
    return-void
.end method

.method private shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 5

    .line 544
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mPeopleNotificationIdentifier:Ldagger/Lazy;

    .line 549
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    return v4

    .line 553
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    .line 556
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    .line 557
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    if-eqz v0, :cond_3

    .line 560
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupNotFullyVisible(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v4

    :cond_4
    :goto_0
    return v2
.end method

.method private stopIsolatingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 607
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 611
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 613
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    .line 614
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 245
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v6}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 247
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    .line 246
    invoke-interface {v6, v7, v4}, Lcom/android/wm/shell/bubbles/Bubbles;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0

    .line 254
    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    .line 255
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v4, :cond_4

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    if-nez v6, :cond_4

    if-eq v2, v5, :cond_3

    if-nez v2, :cond_4

    .line 258
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->hasIsolatedChildren(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v1, v5

    :cond_4
    iput-boolean v1, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    if-eq v0, v1, :cond_6

    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;

    .line 262
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsUpdatingUnchangedGroup:Z

    if-nez v2, :cond_5

    .line 263
    iget-boolean v2, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    invoke-interface {v1, p1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupSuppressionChanged(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    .line 264
    invoke-interface {v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;->onGroupsChanged()V

    goto :goto_1

    :cond_6
    return-void
.end method


# virtual methods
.method public collapseGroups()V
    .locals 6

    .line 369
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 370
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 372
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    .line 373
    iget-boolean v5, v4, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    if-eqz v5, :cond_0

    .line 374
    invoke-direct {p0, v4, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    .line 376
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "GroupManagerLegacy state:"

    .line 633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  number of groups: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n    key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 638
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\n    isolated entries: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string p3, "      "

    .line 640
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, ", "

    .line 641
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getChildren(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 452
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    .line 453
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 457
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    .line 479
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 414
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 437
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 441
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 443
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 444
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getLogicalGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 419
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupSummary(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    return-object p0
.end method

.method public isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 382
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_3

    .line 387
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->suppressed:Z

    if-eqz p1, :cond_1

    goto :goto_0

    .line 390
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public isGroupChild(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    .line 520
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0
.end method

.method public isGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 101
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    return p0
.end method

.method public isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 507
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 510
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    return p0
.end method

.method public isGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 401
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-nez v0, :cond_1

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->children:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isLogicalGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 112
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    return p0
.end method

.method public isOnlyChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    .line 338
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 339
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isOnlyChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getLogicalGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    .line 328
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupSuppressed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onEntryAdded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onEntryRemoved(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 137
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 290
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v1

    .line 291
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    .line 290
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onEntryUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V
    .locals 7

    .line 303
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v0

    .line 304
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 305
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Ljava/lang/String;ZZ)Z

    move-result v3

    .line 306
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v1, :cond_0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    .line 307
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsUpdatingUnchangedGroup:Z

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 309
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryRemovedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;ZZ)V

    .line 311
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryAddedInternal(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 312
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsUpdatingUnchangedGroup:Z

    .line 313
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 314
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mIsolatedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 316
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    .line 317
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_3

    .line 320
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->onEntryBecomingChild(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 532
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 647
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setStatusBarState(I)V

    return-void
.end method

.method public registerGroupChangeListener(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerGroupExpansionChangeListener(Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;)V
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mExpansionChangeListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p1, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public toggleGroupExpansion(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 495
    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;Z)V

    .line 496
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;->expanded:Z

    return p0
.end method

.method public updateIsolation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    .line 591
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isIsolated(Ljava/lang/String;)Z

    move-result v0

    .line 592
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->shouldIsolate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 594
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isolateNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 597
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->stopIsolatingNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSuppression(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->mGroupMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;

    if-eqz p1, :cond_0

    .line 467
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->updateSuppression(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$NotificationGroup;)V

    :cond_0
    return-void
.end method
