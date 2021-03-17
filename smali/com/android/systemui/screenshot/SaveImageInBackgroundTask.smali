.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "SaveImageInBackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

.field private final mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

.field private mImageTime:J

.field private final mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

.field private final mRandom:Ljava/util/Random;

.field private mScreenshotId:Ljava/lang/String;

.field private final mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

.field private final mSharedElementTransition:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final mSmartActionsEnabled:Z

.field private final mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;


# direct methods
.method public static synthetic $r8$lambda$CmqKkJdiLAx9uEQhOfjcOLFsL3Y(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/content/Context;Landroid/net/Uri;Landroid/content/res/Resources;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->lambda$createEditAction$1(Landroid/content/Context;Landroid/net/Uri;Landroid/content/res/Resources;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FtAqRkFdie_EBPlyhy6980h7Tmc(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/net/Uri;Landroid/content/Context;Landroid/content/res/Resources;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->lambda$createShareAction$0(Landroid/net/Uri;Landroid/content/Context;Landroid/content/res/Resources;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-static {v0}, Lcom/android/systemui/screenshot/LogConfig;->logTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/ImageExporter;Lcom/android/systemui/screenshot/ScreenshotSmartActions;Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/screenshot/ImageExporter;",
            "Lcom/android/systemui/screenshot/ScreenshotSmartActions;",
            "Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;)V"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 91
    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    .line 92
    new-instance p3, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-direct {p3}, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    .line 93
    iput-object p5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    .line 97
    iput-object p4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    const-string p2, "systemui"

    const-string p3, "enable_screenshot_notification_smart_actions"

    const/4 p4, 0x1

    .line 100
    invoke-static {p2, p3, p4}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    if-eqz p2, :cond_0

    .line 104
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p2

    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    .line 105
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/systemui/SystemUIFactory;->createScreenshotNotificationSmartActionsProvider(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;)Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    goto :goto_0

    .line 109
    :cond_0
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    invoke-direct {p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    :goto_0
    return-void
.end method

.method private static addIntentExtras(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "android:screenshot_action_type"

    .line 388
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android:screenshot_id"

    .line 389
    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "android:smart_actions_enabled"

    .line 390
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method private buildSmartActions(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    .line 367
    invoke-virtual {v1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "action_type"

    const-string v4, "Smart Action"

    .line 368
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/screenshot/SmartActionsReceiver;

    invoke-direct {v4, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const-string v6, "android:screenshot_action_intent"

    .line 372
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 373
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 374
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    invoke-static {v5, v4, v3, v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->addIntentExtras(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 375
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRandom:Ljava/util/Random;

    .line 376
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const/high16 v5, 0x14000000

    .line 375
    invoke-static {p2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 379
    new-instance v4, Landroid/app/Notification$Action$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v1, v1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-direct {v4, v5, v1, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    .line 380
    invoke-virtual {v4, v1}, Landroid/app/Notification$Action$Builder;->setContextual(Z)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 379
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getUserHandleOfForegroundApplication(Landroid/content/Context;)Landroid/os/UserHandle;
    .locals 1

    .line 345
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 350
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getLastResumedActivityUserId()I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    :catch_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    .line 357
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createEditAction$1(Landroid/content/Context;Landroid/net/Uri;Landroid/content/res/Resources;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 9

    .line 275
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 282
    sget v1, Lcom/android/systemui/R$string;->config_screenshotEditor:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 283
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.EDIT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 285
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    const-string v1, "image/png"

    .line 287
    invoke-virtual {v4, p2, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x1

    .line 288
    invoke-virtual {v4, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 p2, 0x2

    .line 289
    invoke-virtual {v4, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const p2, 0x10008000

    .line 290
    invoke-virtual {v4, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x0

    const/high16 v5, 0x4000000

    .line 292
    iget-object v6, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 298
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 301
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "android:screenshot_action_intent"

    .line 303
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p2

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v3, "android:screenshot_id"

    .line 304
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v2, "android:smart_actions_enabled"

    .line 305
    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 307
    invoke-virtual {p0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10000000

    .line 308
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x14000000

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 301
    invoke-static {p1, v1, p0, p2, v2}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 311
    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget p2, Lcom/android/systemui/R$drawable;->ic_screenshot_edit:I

    .line 312
    invoke-static {p3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    const v1, 0x104075a

    .line 313
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 315
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->action:Landroid/app/Notification$Action;

    return-object v0
.end method

.method private synthetic lambda$createShareAction$0(Landroid/net/Uri;Landroid/content/Context;Landroid/content/res/Resources;)Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;
    .locals 11

    .line 214
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSharedElementTransition:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;

    .line 222
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "Screenshot (%s)"

    .line 223
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 224
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "image/png"

    .line 225
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "android.intent.extra.STREAM"

    .line 226
    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 229
    new-instance v5, Landroid/content/ClipData;

    new-instance v6, Landroid/content/ClipDescription;

    const-string v7, "text/plain"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-direct {v6, v8, v7}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, p1}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v5, v6, v7}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 232
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    const-string p1, "android.intent.extra.SUBJECT"

    .line 233
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 238
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result p1

    const/4 v1, 0x0

    .line 240
    invoke-static {v3, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const v3, 0x10008000

    .line 241
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 245
    iget-object v9, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->bundle:Landroid/os/Bundle;

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/high16 v8, 0x14000000

    move-object v5, p2

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 251
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/systemui/screenshot/ActionProxyReceiver;

    invoke-direct {v3, p2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android:screenshot_action_intent"

    .line 253
    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android:screenshot_disallow_enter_pip"

    .line 254
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v3, "android:screenshot_id"

    .line 255
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v2, "android:smart_actions_enabled"

    .line 256
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    .line 258
    invoke-virtual {p0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 v1, 0x10000000

    .line 259
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/high16 v2, 0x14000000

    .line 251
    invoke-static {p2, p1, p0, v2, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 263
    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget p2, Lcom/android/systemui/R$drawable;->ic_screenshot_share:I

    .line 264
    invoke-static {p3, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p2

    const v1, 0x1040786

    .line 265
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 267
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;->action:Landroid/app/Notification$Action;

    return-object v0
.end method


# virtual methods
.method createDeleteAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    .line 327
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/systemui/screenshot/DeleteScreenshotReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 329
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "android:screenshot_uri_id"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    const-string v2, "android:screenshot_id"

    .line 330
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    const-string v1, "android:smart_actions_enabled"

    .line 331
    invoke-virtual {p3, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x10000000

    .line 333
    invoke-virtual {p0, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    const/high16 p3, 0x54000000

    .line 327
    invoke-static {p1, v0, p0, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 337
    new-instance p1, Landroid/app/Notification$Action$Builder;

    sget p3, Lcom/android/systemui/R$drawable;->ic_screenshot_delete:I

    .line 338
    invoke-static {p2, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    const v0, 0x10402ca

    .line 339
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p3, p2, p0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 341
    invoke-virtual {p1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method

.method createEditAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Ljava/util/function/Supplier;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;"
        }
    .end annotation

    .line 274
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/content/Context;Landroid/net/Uri;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method createShareAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Ljava/util/function/Supplier;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/Resources;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData$ActionTransition;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/net/Uri;Landroid/content/Context;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 115
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    .line 123
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getUserHandleOfForegroundApplication(Landroid/content/Context;)Landroid/os/UserHandle;

    move-result-object v8

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object v5, v1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Screenshot_%s"

    .line 128
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageExporter:Lcom/android/systemui/screenshot/ImageExporter;

    sget-object v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask-$$ExternalSyntheticLambda0;

    .line 132
    invoke-virtual {v1, v2, p1, v5}, Lcom/android/systemui/screenshot/ImageExporter;->export(Ljava/util/concurrent/Executor;Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    .line 133
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/screenshot/ImageExporter$Result;

    .line 134
    iget-object v1, p1, Lcom/android/systemui/screenshot/ImageExporter$Result;->uri:Landroid/net/Uri;

    .line 135
    iget-wide v2, p1, Lcom/android/systemui/screenshot/ImageExporter$Result;->timestamp:J

    iput-wide v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 137
    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    iget-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    move-object v4, v1

    .line 138
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActionsFuture(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;ZLandroid/os/UserHandle;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsEnabled:Z

    if-eqz v3, :cond_1

    const-string v3, "systemui"

    const-string v4, "screenshot_notification_smart_actions_timeout_ms"

    const/16 v5, 0x3e8

    .line 144
    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 148
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotSmartActions:Lcom/android/systemui/screenshot/ScreenshotSmartActions;

    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotId:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSmartActionsProvider:Lcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;

    .line 149
    invoke-virtual {v4, v5, p1, v3, v6}, Lcom/android/systemui/screenshot/ScreenshotSmartActions;->getSmartActions(Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;ILcom/android/systemui/screenshot/ScreenshotNotificationSmartActionsProvider;)Ljava/util/List;

    move-result-object p1

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->buildSmartActions(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iput-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    .line 156
    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->smartActions:Ljava/util/List;

    .line 157
    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createShareAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Ljava/util/function/Supplier;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->shareTransition:Ljava/util/function/Supplier;

    .line 158
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createEditAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Ljava/util/function/Supplier;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->editTransition:Ljava/util/function/Supplier;

    .line 159
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->createDeleteAction(Landroid/content/Context;Landroid/content/res/Resources;Landroid/net/Uri;)Landroid/app/Notification$Action;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->deleteAction:Landroid/app/Notification$Action;

    .line 161
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-interface {p1, v1}, Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;->onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 166
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    iget-object v1, v1, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->uri:Landroid/net/Uri;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iput-object v0, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->clearImage()V

    .line 175
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->reset()V

    .line 176
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-interface {p1, v1}, Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;->onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 67
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;->reset()V

    .line 200
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageData:Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;

    invoke-interface {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;->onActionsReady(Lcom/android/systemui/screenshot/ScreenshotController$SavedImageData;)V

    .line 204
    iget-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iget-object p1, p1, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->finisher:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 205
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->clearImage()V

    return-void
.end method

.method setActionsReadyListener(Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;)V
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$ActionsReadyListener;

    return-void
.end method
