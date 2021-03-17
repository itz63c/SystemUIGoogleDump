.class public final Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;
.super Ljava/lang/Object;
.source "SmartRepliesAndActionsInflater.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflater;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmartRepliesAndActionsInflater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmartRepliesAndActionsInflater.kt\ncom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,473:1\n734#2:474\n825#2,2:475\n*E\n*S KotlinDebug\n*F\n+ 1 SmartRepliesAndActionsInflater.kt\ncom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl\n*L\n241#1:474\n241#1,2:475\n*E\n"
.end annotation


# instance fields
.field private final activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private final constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

.field private final devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

.field private final packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

.field private final smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflater;

.field private final smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflater;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyConstants;Lcom/android/systemui/shared/system/ActivityManagerWrapper;Lcom/android/systemui/shared/system/PackageManagerWrapper;Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;Lcom/android/systemui/statusbar/policy/SmartReplyInflater;Lcom/android/systemui/statusbar/policy/SmartActionInflater;)V
    .locals 1

    const-string v0, "constants"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityManagerWrapper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageManagerWrapper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devicePolicyManagerWrapper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartRepliesInflater"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartActionsInflater"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    .line 96
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    .line 97
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    .line 98
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    .line 99
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflater;

    .line 100
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflater;

    return-void
.end method

.method public static final synthetic access$getSmartActionsInflater$p(Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;)Lcom/android/systemui/statusbar/policy/SmartActionInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->smartActionsInflater:Lcom/android/systemui/statusbar/policy/SmartActionInflater;

    return-object p0
.end method

.method public static final synthetic access$getSmartRepliesInflater$p(Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;)Lcom/android/systemui/statusbar/policy/SmartReplyInflater;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->smartRepliesInflater:Lcom/android/systemui/statusbar/policy/SmartReplyInflater;

    return-object p0
.end method

.method private final filterAllowlistedLockTaskApps(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/app/Notification$Action;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/app/Notification$Action;

    .line 244
    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 245
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->packageManagerWrapper:Lcom/android/systemui/shared/system/PackageManagerWrapper;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_3

    goto :goto_2

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->devicePolicyManagerWrapper:Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/DevicePolicyManagerWrapper;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result v3

    :goto_2
    if-eqz v3, :cond_0

    .line 244
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final chooseSmartRepliesAndActions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;
    .locals 11

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v0, v3}, Landroid/app/Notification;->findRemoteInputActionPair(Z)Landroid/util/Pair;

    move-result-object v4

    .line 173
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->isEnabled()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 174
    invoke-static {}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->access$getDEBUG$p$s-1607655527()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Smart suggestions not enabled, not adding suggestions for "

    .line 175
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SmartReplyViewInflater"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    invoke-direct {p0, v6, v6}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V

    return-object p0

    .line 183
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/SmartReplyConstants;->requiresTargetingP()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 184
    iget v5, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    const/16 v7, 0x1c

    if-lt v5, v7, :cond_2

    goto :goto_0

    :cond_2
    move v5, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v3

    .line 185
    :goto_1
    invoke-virtual {v0}, Landroid/app/Notification;->getContextualActions()Ljava/util/List;

    move-result-object v7

    if-eqz v5, :cond_8

    if-nez v2, :cond_4

    goto :goto_4

    .line 189
    :cond_4
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/app/Notification$Action;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_5

    goto :goto_4

    .line 190
    :cond_5
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/app/RemoteInput;

    invoke-virtual {v8}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v8, v6

    goto :goto_3

    :cond_6
    array-length v8, v8

    if-nez v8, :cond_7

    move v8, v3

    goto :goto_2

    :cond_7
    move v8, v1

    :goto_2
    xor-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    :goto_3
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 191
    new-instance v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 192
    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroid/app/RemoteInput;

    invoke-virtual {v9}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v9

    const-string v10, "pair.first.choices"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Lkotlin/collections/ArraysKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 193
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/app/RemoteInput;

    .line 191
    invoke-direct {v8, v9, v2, v5, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;-><init>(Ljava/util/List;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V

    goto :goto_5

    :cond_8
    :goto_4
    move-object v8, v6

    :goto_5
    const-string v2, "appGeneratedSmartActions"

    .line 202
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_9

    .line 203
    new-instance v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-direct {v6, v7, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;-><init>(Ljava/util/List;Z)V

    :cond_9
    if-nez v8, :cond_c

    if-nez v6, :cond_c

    .line 208
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSmartReplies()Ljava/util/List;

    move-result-object v1

    const-string v2, "entry.smartReplies"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSmartActions()Ljava/util/List;

    move-result-object p1

    const-string v2, "entry.smartActions"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 212
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/app/Notification$Action;

    invoke-virtual {v2}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 213
    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Landroid/app/Notification$Action;

    iget-object v5, v5, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_a

    .line 214
    new-instance v8, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    .line 216
    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/app/RemoteInput;

    .line 217
    check-cast v2, Landroid/app/Notification$Action;

    iget-object v2, v2, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 214
    invoke-direct {v8, v1, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;-><init>(Ljava/util/List;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Z)V

    .line 220
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_c

    .line 221
    invoke-virtual {v0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->activityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockTaskKioskModeActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->filterAllowlistedLockTaskApps(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 229
    :cond_b
    new-instance v6, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    invoke-direct {v6, p1, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;-><init>(Ljava/util/List;Z)V

    .line 232
    :cond_c
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    invoke-direct {p0, v8, v6}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;)V

    return-object p0
.end method

.method public inflateSmartReplies(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;
    .locals 11

    const-string v0, "sysuiContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifPackageContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entry"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->chooseSmartRepliesAndActions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;

    move-result-object v0

    .line 110
    invoke-static {p3, v0}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->shouldShowSmartReplyView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 111
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    invoke-direct {p0, v2, v2, v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)V

    return-object p0

    .line 121
    :cond_0
    invoke-static {p4, v0}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterKt;->areSuggestionsSimilar(Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)Z

    move-result p4

    xor-int/lit8 p4, p4, 0x1

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;->constants:Lcom/android/systemui/statusbar/policy/SmartReplyConstants;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->inflate(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/SmartReplyConstants;)Lcom/android/systemui/statusbar/policy/SmartReplyView;

    move-result-object v1

    .line 125
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartReplies:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;

    if-nez v7, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    .line 126
    :cond_1
    iget-boolean v3, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->fromAssistant:Z

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/SmartReplyView;->setSmartRepliesGeneratedByAssistant(Z)V

    if-nez v7, :cond_2

    move-object v3, v2

    goto :goto_1

    .line 128
    :cond_2
    iget-object v3, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;->choices:Ljava/util/List;

    const-string v4, "smartReplies.choices"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object v9

    new-instance v10, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl$inflateSmartReplies$smartReplyButtons$1$1;

    move-object v3, v10

    move-object v4, p0

    move-object v5, v1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl$inflateSmartReplies$smartReplyButtons$1$1;-><init>(Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartReplies;Z)V

    invoke-static {v9, v10}, Lkotlin/sequences/SequencesKt;->mapIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    .line 137
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v3

    :cond_3
    move-object v10, v3

    .line 139
    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;->smartActions:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;

    if-nez v7, :cond_4

    goto :goto_2

    .line 141
    :cond_4
    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {v9, p2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 142
    iget-object p1, v7, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;->actions:Ljava/util/List;

    const-string p2, "smartActions.actions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 143
    sget-object p2, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl$inflateSmartReplies$smartActionButtons$1$1;->INSTANCE:Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl$inflateSmartReplies$smartActionButtons$1$1;

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p1

    .line 144
    new-instance p2, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl$inflateSmartReplies$smartActionButtons$1$2;

    move-object v3, p2

    move-object v4, p0

    move-object v5, v1

    move-object v6, p3

    move v8, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl$inflateSmartReplies$smartActionButtons$1$2;-><init>(Lcom/android/systemui/statusbar/policy/SmartRepliesAndActionsInflaterImpl;Lcom/android/systemui/statusbar/policy/SmartReplyView;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartActions;ZLandroid/view/ContextThemeWrapper;)V

    invoke-static {p1, p2}, Lkotlin/sequences/SequencesKt;->mapIndexed(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_5

    .line 154
    invoke-static {}, Lkotlin/sequences/SequencesKt;->emptySequence()Lkotlin/sequences/Sequence;

    move-result-object v2

    .line 156
    :cond_5
    new-instance p0, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;

    .line 158
    invoke-static {v10, v2}, Lkotlin/sequences/SequencesKt;->plus(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p1

    invoke-static {p1}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p1

    .line 156
    invoke-direct {p0, v1, p1, v0}, Lcom/android/systemui/statusbar/policy/InflatedSmartReplies;-><init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;Ljava/util/List;Lcom/android/systemui/statusbar/policy/InflatedSmartReplies$SmartRepliesAndActions;)V

    return-object p0
.end method
