.class Lcom/zui/gallery/widget/WidgetManger4x2$6;
.super Ljava/lang/Object;
.source "WidgetManger4x2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetManger4x2;->isLoadBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetManger4x2;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetManger4x2;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetManger4x2$6;->this$0:Lcom/zui/gallery/widget/WidgetManger4x2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "isWidget4x2"

    .line 872
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->queryConformToTheRules(Ljava/lang/String;)V

    return-void
.end method
