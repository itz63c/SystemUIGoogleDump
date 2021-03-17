.class public Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;
.super Ljava/lang/Object;
.source "NotificationViewHierarchyManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;


# instance fields
.field private final mAlwaysExpandNonGroupedNotification:Z

.field private mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

.field private final mBubblesOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;"
        }
    .end annotation
.end field

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mContext:Landroid/content/Context;

.field private final mDynamicChildBindController:Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

.field protected final mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private final mHandler:Landroid/os/Handler;

.field private mIsHandleDynamicPrivacyChangeScheduled:Z

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field protected final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

.field private mPerformingUpdate:Z

.field private mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private final mTmpChildOrderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public static synthetic $r8$lambda$NaEk8lpZFftBsAxs2yKm4GdS36s(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->onHandleDynamicPrivacyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Ljava/util/Optional;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/DynamicChildBindController;Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/bubbles/Bubbles;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;",
            "Lcom/android/systemui/statusbar/notification/DynamicChildBindController;",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;",
            "Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mContext:Landroid/content/Context;

    .line 123
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    .line 124
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 125
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 126
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 127
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    .line 128
    check-cast p6, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 129
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 130
    iput-object p11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 132
    sget p2, Lcom/android/systemui/R$bool;->config_alwaysExpandNonGroupedNotifications:I

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    .line 134
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubblesOptional:Ljava/util/Optional;

    .line 135
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    .line 136
    iput-object p12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicChildBindController:Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

    .line 137
    iput-object p13, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    .line 138
    iput-object p14, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    return-void
.end method

.method private addNotificationChildrenAndSort()V
    .locals 11

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 332
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 333
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 334
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v5, :cond_0

    goto/16 :goto_2

    .line 339
    :cond_0
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 340
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v5

    .line 341
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_1

    goto :goto_2

    .line 346
    :cond_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUntruncatedChildCount(I)V

    move v7, v1

    .line 347
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 348
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    if-eqz v5, :cond_2

    .line 349
    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 350
    :cond_2
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 351
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trying to add a notification child that already has a parent. class:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\n child: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "NotificationViewHierarchyManager"

    .line 351
    invoke-static {v10, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    invoke-virtual {v9, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 357
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v9, v8}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 358
    invoke-virtual {v4, v8, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->addChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)V

    .line 359
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildAdded(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    .line 361
    :cond_4
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 365
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;)Z

    move-result v4

    or-int/2addr v3, v4

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateChildOrderChangedEvent()V

    :cond_7
    return-void
.end method

.method private beginUpdate()V
    .locals 3

    .line 518
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Re-entrant code during update"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    .line 521
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method private endUpdate()V
    .locals 3

    .line 525
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "NotificationViewHierarchyManager"

    const-string v2, "Manager state has become desynced"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    .line 528
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    return-void
.end method

.method private onHandleDynamicPrivacyChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 513
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method private removeNotificationChildren()V
    .locals 7

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 377
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 378
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 379
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v3, :cond_0

    goto :goto_3

    .line 384
    :cond_0
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 385
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v3

    .line 386
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v3, :cond_5

    .line 389
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_2

    .line 392
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 393
    :cond_2
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v6

    if-nez v6, :cond_1

    .line 394
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 397
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 398
    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeChildNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 399
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 400
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 399
    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v5

    if-nez v5, :cond_4

    .line 403
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 404
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v6

    .line 403
    invoke-interface {v5, v4, v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->notifyGroupChildRemoved(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Landroid/view/ViewGroup;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private updateRowStatesInternal()V
    .locals 13

    const-string v0, "NotificationViewHierarchyManager#updateRowStates"

    .line 422
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v0

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 427
    :goto_0
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    sub-int/2addr v0, v3

    :goto_1
    if-ltz v0, :cond_2

    .line 429
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v5, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 430
    instance-of v6, v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v6, :cond_1

    goto :goto_2

    .line 433
    :cond_1
    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 435
    :goto_3
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 436
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 437
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    .line 438
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-nez v1, :cond_5

    .line 443
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAlwaysExpandNonGroupedNotification:Z

    if-nez v8, :cond_4

    if-nez v0, :cond_3

    if-nez v7, :cond_3

    .line 445
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    :cond_3
    move v8, v2

    goto :goto_5

    :cond_4
    :goto_4
    move v8, v3

    .line 443
    :goto_5
    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 448
    :cond_5
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    .line 449
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 450
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    .line 449
    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 450
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v9

    if-nez v9, :cond_6

    move v9, v3

    goto :goto_6

    :cond_6
    move v9, v2

    .line 451
    :goto_6
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v10, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 454
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 455
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v11, v6}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getLogicalGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 456
    iget-object v12, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v12, v11}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v11

    if-eqz v11, :cond_7

    move v10, v3

    :cond_7
    const/16 v11, 0x8

    if-nez v9, :cond_c

    .line 461
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 462
    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldHideNotifications(I)Z

    move-result v8

    if-nez v8, :cond_c

    if-eqz v1, :cond_8

    if-nez v10, :cond_8

    goto :goto_8

    .line 466
    :cond_8
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-ne v8, v11, :cond_9

    move v8, v3

    goto :goto_7

    :cond_9
    move v8, v2

    :goto_7
    if-eqz v8, :cond_a

    .line 468
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_a
    if-nez v7, :cond_d

    .line 470
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_d

    if-eqz v8, :cond_b

    .line 473
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    xor-int/lit8 v9, v10, 0x1

    invoke-interface {v7, v8, v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 464
    :cond_c
    :goto_8
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 479
    :cond_d
    :goto_9
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 481
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object v7

    .line 482
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    :goto_a
    if-ltz v8, :cond_e

    .line 484
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v4, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    goto :goto_a

    .line 487
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->showFeedbackIndicator(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mAssistantFeedbackController:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    .line 488
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->getFeedbackResources(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/util/Pair;

    move-result-object v8

    .line 487
    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->showFeedbackIcon(ZLandroid/util/Pair;)V

    .line 489
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getLastAudiblyAlertedMs()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setLastAudiblyAlertedMs(J)V

    goto/16 :goto_3

    :cond_f
    const-string v0, "NotificationPresenter#onUpdateRowStates"

    .line 492
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->onUpdateRowStates()V

    .line 494
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 495
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public onDynamicPrivacyChanged()V
    .locals 2

    .line 500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPerformingUpdate:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationViewHierarchyManager"

    const-string v1, "onDynamicPrivacyChanged made a re-entrant call"

    .line 501
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 507
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mIsHandleDynamicPrivacyChangeScheduled:Z

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    .line 144
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    return-void
.end method

.method public updateNotificationViews()V
    .locals 12

    .line 153
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v0

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_10

    .line 160
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 161
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubblesOptional:Ljava/util/Optional;

    invoke-virtual {v7}, Ljava/util/Optional;->isPresent()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mBubblesOptional:Ljava/util/Optional;

    .line 162
    invoke-virtual {v7}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 163
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-interface {v7, v8, v9}, Lcom/android/wm/shell/bubbles/Bubbles;->isBubbleNotificationSuppressedFromShade(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v3

    .line 164
    :goto_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v8

    if-nez v8, :cond_f

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v8

    if-nez v8, :cond_f

    if-nez v7, :cond_f

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mFgsSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    .line 166
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->hasEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto/16 :goto_9

    .line 172
    :cond_1
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 177
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v8

    .line 178
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v9

    if-nez v9, :cond_3

    .line 179
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 180
    invoke-interface {v10, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    move v10, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v10, v5

    :goto_3
    if-eqz v10, :cond_5

    .line 181
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isDynamicallyUnlocked()Z

    move-result v11

    if-eqz v11, :cond_5

    if-eq v7, v8, :cond_4

    const/4 v11, -0x1

    if-eq v7, v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 183
    invoke-interface {v11, v7}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsSeparateWorkChallenge(I)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    move v10, v3

    .line 186
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v7, v6}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->needsRedaction(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v10, :cond_6

    if-eqz v7, :cond_6

    move v10, v5

    goto :goto_4

    :cond_6
    move v10, v3

    :goto_4
    if-eqz v9, :cond_7

    .line 188
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 189
    invoke-interface {v9, v8}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v8

    if-nez v8, :cond_7

    move v8, v5

    goto :goto_5

    :cond_7
    move v8, v3

    .line 191
    :goto_5
    invoke-virtual {v6, v10, v8}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    .line 192
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    .line 193
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mLowPriorityInflationHelper:Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/systemui/statusbar/notification/collection/inflation/LowPriorityInflationHelper;->recheckLowPriorityViewAndInflate(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 194
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    .line 196
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    .line 197
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->areGroupChangesAllowed()Z

    move-result v8

    if-nez v8, :cond_9

    .line 198
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasFinishedInitialization()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_6

    :cond_8
    move v5, v3

    .line 200
    :cond_9
    :goto_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    if-nez v5, :cond_b

    .line 203
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isChildInGroup()Z

    move-result v5

    if-eqz v7, :cond_a

    if-nez v5, :cond_a

    .line 206
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v7, v9, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->addGroupChangesAllowedCallback(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;Z)V

    :goto_7
    move v7, v5

    goto :goto_8

    :cond_a
    if-nez v7, :cond_b

    if-eqz v5, :cond_b

    .line 210
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isLogicalGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 212
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v8

    .line 213
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v7, v9, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->addGroupChangesAllowedCallback(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;Z)V

    goto :goto_7

    :cond_b
    :goto_8
    if-eqz v7, :cond_d

    .line 220
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_c

    .line 222
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 223
    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :cond_c
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 232
    :cond_d
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 235
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_e
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 242
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 243
    :goto_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v2, v4, :cond_12

    .line 244
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 245
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    instance-of v6, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v6, :cond_11

    .line 246
    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 250
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v6

    if-nez v6, :cond_11

    .line 251
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 256
    :cond_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 257
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    if-eqz v4, :cond_13

    .line 260
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    .line 262
    :cond_13
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 263
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->removeAllChildren()V

    .line 265
    :cond_14
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->removeContainerView(Landroid/view/View;)V

    .line 266
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildTransferInProgress(Z)V

    goto :goto_b

    .line 269
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->removeNotificationChildren()V

    move v0, v3

    .line 271
    :goto_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_18

    .line 272
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_16

    .line 274
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->notifyViewAddition(Landroid/view/View;)V

    .line 275
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->addContainerView(Landroid/view/View;)V

    goto :goto_d

    .line 276
    :cond_16
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->containsView(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 279
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    :cond_17
    :goto_d
    add-int/2addr v0, v5

    goto :goto_c

    .line 284
    :cond_18
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->addNotificationChildrenAndSort()V

    move v0, v3

    move v2, v0

    .line 290
    :goto_e
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1d

    .line 291
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->getContainerChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 292
    instance-of v5, v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v5, :cond_19

    goto :goto_10

    .line 296
    :cond_19
    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_10

    .line 301
    :cond_1a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eq v4, v5, :cond_1c

    .line 305
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 306
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v4, v5, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    goto :goto_f

    .line 308
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;Z)V

    :cond_1c
    :goto_f
    add-int/lit8 v2, v2, 0x1

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 316
    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mDynamicChildBindController:Lcom/android/systemui/statusbar/notification/DynamicChildBindController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/DynamicChildBindController;->updateContentViews(Ljava/util/Map;)V

    .line 317
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->onReorderingFinished()V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mTmpChildOrderMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->onNotificationViewUpdateFinished()V

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method

.method public updateRowStates()V
    .locals 0

    .line 415
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->beginUpdate()V

    .line 417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateRowStatesInternal()V

    .line 418
    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->endUpdate()V

    return-void
.end method
