.class Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;
.super Ljava/lang/Object;
.source "StartingSurfaceDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferredStartingTypeHelper"
.end annotation


# instance fields
.field mPreferredType:I

.field mSnapshot:Landroid/window/TaskSnapshot;


# direct methods
.method constructor <init>(Landroid/window/StartingWindowInfo;)V
    .locals 11

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iget v0, p1, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move v7, v3

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v2

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move v9, v2

    :goto_3
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v10, v3

    goto :goto_4

    :cond_4
    move v10, v2

    :goto_4
    move-object v4, p0

    move-object v5, p1

    .line 125
    invoke-direct/range {v4 .. v10}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->preferredStartingWindowType(Landroid/window/StartingWindowInfo;ZZZZZ)I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->mPreferredType:I

    return-void
.end method

.method private getTaskSnapshot(I)Landroid/window/TaskSnapshot;
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->mSnapshot:Landroid/window/TaskSnapshot;

    if-eqz v0, :cond_0

    return-object v0

    .line 184
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityTaskManager;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->mSnapshot:Landroid/window/TaskSnapshot;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 187
    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get snapshot for task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", from: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isSnapshotCompatible(Landroid/window/StartingWindowInfo;Landroid/window/TaskSnapshot;)Z
    .locals 0

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    .line 169
    :cond_0
    iget-object p1, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 170
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 171
    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result p2

    if-ne p1, p2, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private preferredStartingWindowType(Landroid/window/StartingWindowInfo;ZZZZZ)I
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_3

    if-eqz p4, :cond_3

    if-eqz p3, :cond_0

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    if-eqz p3, :cond_2

    if-eqz p5, :cond_2

    .line 144
    iget-object p3, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-direct {p0, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->getTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object p3

    .line 145
    invoke-direct {p0, p1, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$PreferredStartingTypeHelper;->isSnapshotCompatible(Landroid/window/StartingWindowInfo;Landroid/window/TaskSnapshot;)Z

    move-result p0

    const/4 p3, 0x2

    if-eqz p0, :cond_1

    return p3

    .line 148
    :cond_1
    iget-object p0, p1, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq p0, p3, :cond_2

    return v0

    :cond_2
    return p2

    :cond_3
    :goto_0
    return v0
.end method
