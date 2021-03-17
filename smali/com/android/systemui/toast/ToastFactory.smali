.class public Lcom/android/systemui/toast/ToastFactory;
.super Ljava/lang/Object;
.source "ToastFactory.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

.field private final mToastStyleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string p1, "ToastFactory"

    .line 55
    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 56
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/FeatureFlags;->isToastStyleEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/toast/ToastFactory;->mToastStyleEnabled:Z

    .line 57
    new-instance p1, Lcom/android/systemui/toast/ToastFactory$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/toast/ToastFactory$1;-><init>(Lcom/android/systemui/toast/ToastFactory;)V

    const-class p0, Lcom/android/systemui/plugins/ToastPlugin;

    const/4 p3, 0x0

    invoke-interface {p2, p1, p0, p3}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/toast/ToastFactory;)Lcom/android/systemui/plugins/ToastPlugin;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/toast/ToastFactory;Lcom/android/systemui/plugins/ToastPlugin;)Lcom/android/systemui/plugins/ToastPlugin;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    return-object p1
.end method

.method private isPluginAvailable()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public createToast(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;II)Lcom/android/systemui/toast/SystemUIToast;
    .locals 12

    move-object v0, p0

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/toast/ToastFactory;->isPluginAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Lcom/android/systemui/toast/SystemUIToast;

    iget-object v3, v0, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v2, v0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    invoke-interface {v2, p2, p3, v9}, Lcom/android/systemui/plugins/ToastPlugin;->createToast(Ljava/lang/CharSequence;Ljava/lang/String;I)Lcom/android/systemui/plugins/ToastPlugin$Toast;

    move-result-object v6

    iget-boolean v0, v0, Lcom/android/systemui/toast/ToastFactory;->mToastStyleEnabled:Z

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move/from16 v8, p4

    move v9, v0

    move/from16 v10, p5

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/systemui/plugins/ToastPlugin$Toast;Ljava/lang/String;IZI)V

    return-object v1

    :cond_0
    move-object v7, p2

    move-object v8, p3

    move/from16 v9, p4

    .line 82
    new-instance v1, Lcom/android/systemui/toast/SystemUIToast;

    iget-object v5, v0, Lcom/android/systemui/toast/ToastFactory;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v10, v0, Lcom/android/systemui/toast/ToastFactory;->mToastStyleEnabled:Z

    move-object v4, v1

    move-object v6, p1

    move/from16 v11, p5

    invoke-direct/range {v4 .. v11}, Lcom/android/systemui/toast/SystemUIToast;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;IZI)V

    return-object v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "ToastFactory:"

    .line 92
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mAttachedPlugin="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/toast/ToastFactory;->mPlugin:Lcom/android/systemui/plugins/ToastPlugin;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mToastStyleEnabled="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/toast/ToastFactory;->mToastStyleEnabled:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
