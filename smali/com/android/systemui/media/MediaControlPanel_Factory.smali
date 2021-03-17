.class public final Lcom/android/systemui/media/MediaControlPanel_Factory;
.super Ljava/lang/Object;
.source "MediaControlPanel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/media/MediaControlPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final activityStarterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private final backgroundExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardDismissUtilProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaDataManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final seekBarViewModelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaViewControllerProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->seekBarViewModelProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p8, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/media/MediaControlPanel_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ">;)",
            "Lcom/android/systemui/media/MediaControlPanel_Factory;"
        }
    .end annotation

    .line 70
    new-instance v9, Lcom/android/systemui/media/MediaControlPanel_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/MediaControlPanel_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)Lcom/android/systemui/media/MediaControlPanel;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/media/MediaViewController;",
            "Lcom/android/systemui/media/SeekBarViewModel;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/media/MediaDataManager;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;",
            "Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;",
            ")",
            "Lcom/android/systemui/media/MediaControlPanel;"
        }
    .end annotation

    .line 77
    new-instance v9, Lcom/android/systemui/media/MediaControlPanel;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/media/MediaControlPanel;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/android/systemui/media/MediaControlPanel;
    .locals 9

    .line 59
    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->backgroundExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/media/MediaViewController;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->seekBarViewModelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/SeekBarViewModel;

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaDataManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    iget-object v0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->keyguardDismissUtilProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iget-object p0, p0, Lcom/android/systemui/media/MediaControlPanel_Factory;->mediaOutputDialogFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;

    invoke-static/range {v1 .. v8}, Lcom/android/systemui/media/MediaControlPanel_Factory;->newInstance(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/media/MediaViewController;Lcom/android/systemui/media/SeekBarViewModel;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaControlPanel_Factory;->get()Lcom/android/systemui/media/MediaControlPanel;

    move-result-object p0

    return-object p0
.end method
