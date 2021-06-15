.class public Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;
.super Ljava/lang/Object;
.source "PeopleSpaceWidgetManager.java"

# interfaces
.implements Landroid/app/people/PeopleManager$ConversationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TileConversationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received updated conversation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PeopleSpaceWidgetMgr"

    .line 194
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object p0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->updateWidgetsWithConversationChanged(Landroid/app/people/ConversationChannel;)V

    return-void
.end method
