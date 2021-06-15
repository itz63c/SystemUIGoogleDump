.class public Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;
.super Ljava/lang/Object;
.source "LaunchOpa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/LaunchOpa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFeedbackEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mFeedbackEffects:Ljava/util/List;

    .line 163
    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public addFeedbackEffect(Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;)Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/systemui/elmyra/actions/LaunchOpa;
    .locals 4

    .line 173
    new-instance v0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/LaunchOpa$Builder;->mFeedbackEffects:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/systemui/elmyra/actions/LaunchOpa;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/List;Lcom/google/android/systemui/elmyra/actions/LaunchOpa$1;)V

    return-object v0
.end method
