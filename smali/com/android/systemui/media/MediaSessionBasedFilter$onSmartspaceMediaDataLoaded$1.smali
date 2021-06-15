.class final Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaSessionBasedFilter.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaSessionBasedFilter;->onSmartspaceMediaDataLoaded(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $data:Landroid/app/smartspace/SmartspaceTarget;

.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;


# direct methods
.method constructor <init>(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Landroid/app/smartspace/SmartspaceTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaSessionBasedFilter;

    iget-object v1, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;->$data:Landroid/app/smartspace/SmartspaceTarget;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/media/MediaSessionBasedFilter;->access$dispatchSmartspaceMediaDataLoaded(Lcom/android/systemui/media/MediaSessionBasedFilter;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method
