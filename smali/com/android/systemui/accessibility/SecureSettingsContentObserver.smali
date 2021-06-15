.class public abstract Lcom/android/systemui/accessibility/SecureSettingsContentObserver;
.super Ljava/lang/Object;
.source "SecureSettingsContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field final mListeners:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    .line 55
    iput-object p2, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mKey:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    new-instance p1, Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver$1;-><init>(Lcom/android/systemui/accessibility/SecureSettingsContentObserver;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/accessibility/SecureSettingsContentObserver;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->updateValueChanged()V

    return-void
.end method

.method private updateValueChanged()V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->getSettingsValue()Ljava/lang/String;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 110
    iget-object v3, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->onValueChanged(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "listener must be non-null"

    .line 71
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 76
    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mKey:Ljava/lang/String;

    .line 77
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentObserver:Landroid/database/ContentObserver;

    .line 76
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final getSettingsValue()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mKey:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract onValueChanged(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public removeListener(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "listener must be non-null"

    .line 88
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecureSettingsContentObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
