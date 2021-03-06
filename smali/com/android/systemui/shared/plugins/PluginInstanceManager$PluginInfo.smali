.class Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;
.super Ljava/lang/Object;
.source "PluginInstanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/plugins/PluginInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PluginInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field mPackage:Ljava/lang/String;

.field mPlugin:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPluginContext:Landroid/content/Context;

.field private final mVersion:Lcom/android/systemui/shared/plugins/VersionInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Landroid/content/Context;Lcom/android/systemui/shared/plugins/VersionInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/shared/plugins/VersionInfo;",
            ")V"
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    .line 458
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    .line 459
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    .line 460
    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    .line 461
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mVersion:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Landroid/content/Context;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Ljava/lang/String;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mClass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 0

    .line 448
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstanceManager$PluginInfo;->mVersion:Lcom/android/systemui/shared/plugins/VersionInfo;

    return-object p0
.end method
