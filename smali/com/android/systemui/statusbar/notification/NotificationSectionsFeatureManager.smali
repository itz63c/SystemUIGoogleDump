.class public final Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;
.super Ljava/lang/Object;
.source "NotificationSectionsFeatureManager.kt"


# instance fields
.field private final context:Landroid/content/Context;

.field private final proxy:Lcom/android/systemui/util/DeviceConfigProxy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DeviceConfigProxy;Landroid/content/Context;)V
    .locals 1

    const-string v0, "proxy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->proxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 42
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    .line 75
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->access$setSUsePeopleFiltering$p$s1027494425(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final getNotificationBuckets()[I
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isMediaControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    new-array p0, p0, [I

    .line 56
    fill-array-data p0, :array_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result v0

    const/4 v1, 0x5

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isMediaControlsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v1, [I

    .line 59
    fill-array-data p0, :array_1

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isFilteringEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->isMediaControlsEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    new-array p0, v1, [I

    .line 62
    fill-array-data p0, :array_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    new-array p0, p0, [I

    .line 65
    fill-array-data p0, :array_3

    :goto_0
    return-object p0

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x1
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x1
        0x5
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_3
    .array-data 4
        0x5
        0x6
    .end array-data
.end method

.method public final getNumberOfBuckets()I
    .locals 0

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->getNotificationBuckets()[I

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public final isFilteringEnabled()Z
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->proxy:Lcom/android/systemui/util/DeviceConfigProxy;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManagerKt;->access$usePeopleFiltering(Lcom/android/systemui/util/DeviceConfigProxy;)Z

    move-result p0

    return p0
.end method

.method public final isMediaControlsEnabled()Z
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/util/Utils;->useQsMediaPlayer(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
