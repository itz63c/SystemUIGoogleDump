.class public Lcom/android/systemui/qs/external/CustomTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/CustomTile$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;"
    }
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private mDefaultIcon:Landroid/graphics/drawable/Icon;

.field private mDefaultLabel:Ljava/lang/CharSequence;

.field private mIsShowingDialog:Z

.field private mIsTokenGranted:Z

.field private mListening:Z

.field private final mService:Landroid/service/quicksettings/IQSTileService;

.field private final mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

.field private final mTile:Landroid/service/quicksettings/Tile;

.field private final mToken:Landroid/os/IBinder;

.field private final mUser:I

.field private final mUserContext:Landroid/content/Context;

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$QsrtOtrBlHaK4Ca1XQfStoS7uo8(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->lambda$handleUpdateState$0(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ihBn6-Vs0-WsoSmfxGR2thF-eaQ(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->lambda$startUnlockAndRun$1()V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 81
    new-instance p2, Landroid/os/Binder;

    invoke-direct {p2}, Landroid/os/Binder;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    .line 107
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    .line 108
    invoke-static {p8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 109
    new-instance p2, Landroid/service/quicksettings/Tile;

    invoke-direct {p2}, Landroid/service/quicksettings/Tile;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 110
    iput-object p9, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    .line 111
    invoke-virtual {p9}, Landroid/content/Context;->getUserId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 113
    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/external/TileServices;->getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    .line 114
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->isToggleableTile()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->resetStates()V

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 120
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/external/TileServiceManager;->setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;Lcom/android/systemui/qs/external/CustomTile$1;)V
    .locals 0

    .line 67
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 67
    invoke-static {p0}, Lcom/android/systemui/qs/external/CustomTile;->getAction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/android/systemui/qs/external/CustomTile$Builder;Ljava/lang/String;Landroid/content/Context;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 0

    .line 444
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$Builder;->setSpec(Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile$Builder;

    move-result-object p0

    .line 445
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/external/CustomTile$Builder;->setUserContext(Landroid/content/Context;)Lcom/android/systemui/qs/external/CustomTile$Builder;

    move-result-object p0

    .line 446
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$Builder;->build()Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p0

    return-object p0
.end method

.method private static getAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "custom("

    .line 424
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 427
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 428
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 429
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty custom tile spec action"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 425
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad custom tile spec: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    .line 416
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    .line 418
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Empty custom tile spec action"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .locals 3

    const/4 p0, 0x1

    if-ne p1, p2, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_1

    goto :goto_0

    .line 175
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 176
    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v1

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v2

    if-eq v1, v2, :cond_3

    return v0

    .line 182
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    :cond_4
    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method private isSystemApp(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 161
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handleUpdateState$0(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 358
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 360
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$startUnlockAndRun$1()V
    .locals 0

    .line 405
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->onUnlockComplete()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 308
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static toSpec(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "custom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateDefaultTileAndIcon()V
    .locals 8

    const/4 v0, 0x0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0xc0000

    .line 132
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/external/CustomTile;->isSystemApp(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v2, 0xc0200

    .line 136
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 137
    iget v3, v2, Landroid/content/pm/ServiceInfo;->icon:I

    if-eqz v3, :cond_1

    goto :goto_0

    .line 138
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 140
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v4}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 141
    invoke-virtual {v4}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v4, v7}, Lcom/android/systemui/qs/external/CustomTile;->iconEquals(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v6

    :goto_2
    if-eqz v3, :cond_4

    .line 143
    iget-object v7, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v3, v0

    :goto_3
    iput-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz v4, :cond_5

    .line 145
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v4, v3}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 148
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    .line 149
    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move v5, v6

    .line 150
    :cond_7
    invoke-virtual {v2, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 152
    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v2, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 155
    :catch_0
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    .line 156
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultLabel:Ljava/lang/CharSequence;

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public getComponent()Landroid/content/ComponentName;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 3

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.quicksettings.action.QS_TILE_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/CustomTile;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    const-string v2, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 298
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p0

    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    .line 302
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "package"

    invoke-static {v2, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 301
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x10c

    return p0
.end method

.method public final getMetricsSpec()Ljava/lang/String;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getQsTile()Landroid/service/quicksettings/Tile;
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    return-object p0
.end method

.method protected getStaleTimeout()J
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/android/systemui/qs/QSHost;->indexOf(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getState()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getUser()I
    .locals 0

    .line 199
    iget p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUser:I

    return p0
.end method

.method protected handleClick()V
    .locals 6

    .line 313
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x7f3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 320
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected handleDestroy()V
    .locals 3

    .line 272
    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    .line 273
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    if-eqz v0, :cond_0

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getTileServices()Lcom/android/systemui/qs/external/TileServices;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/external/TileServices;->freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 242
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mListening:Z

    if-eqz p1, :cond_1

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-nez p1, :cond_3

    .line 249
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 250
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {p1}, Landroid/service/quicksettings/IQSTileService;->onStopListening()V

    .line 254
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_2

    .line 257
    :try_start_1
    iget-object p1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {p1, v1, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 260
    :catch_0
    :try_start_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsTokenGranted:Z

    .line 262
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 263
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_3
    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 341
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p2

    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    .line 345
    :cond_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 348
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    const-string v0, "Invalid icon, forcing into unavailable state"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 352
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mUserContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 356
    :goto_0
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/android/systemui/qs/external/CustomTile-$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    .line 364
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 366
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 367
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 368
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_1

    .line 370
    :cond_1
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 373
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 374
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_2

    .line 376
    :cond_2
    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 379
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 380
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 382
    :cond_3
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 385
    :goto_3
    instance-of p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz p0, :cond_5

    .line 386
    const-class p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 387
    move-object p0, p1

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    :cond_5
    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isToggleableTile()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 286
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0

    .line 288
    :cond_0
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    return-object p0
.end method

.method public onDialogHidden()V
    .locals 2

    const/4 v0, 0x0

    .line 230
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDialogShown()V
    .locals 1

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mIsShowingDialog:Z

    return-void
.end method

.method public onTileChanged(Landroid/content/ComponentName;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/qs/external/CustomTile;->updateDefaultTileAndIcon()V

    return-void
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public startUnlockAndRun()V
    .locals 2

    .line 403
    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/external/CustomTile-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/CustomTile-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateState(Landroid/service/quicksettings/Tile;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/qs/external/CustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p1}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    return-void
.end method
