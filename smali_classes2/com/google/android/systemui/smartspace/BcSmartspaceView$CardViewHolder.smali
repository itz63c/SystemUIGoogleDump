.class public Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BcSmartspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardViewHolder"
.end annotation


# instance fields
.field public card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
    .locals 0

    .line 533
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 534
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$CardViewHolder;->card:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    return-void
.end method
