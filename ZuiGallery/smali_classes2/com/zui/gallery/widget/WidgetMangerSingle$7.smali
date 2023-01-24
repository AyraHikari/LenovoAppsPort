.class Lcom/zui/gallery/widget/WidgetMangerSingle$7;
.super Ljava/lang/Object;
.source "WidgetMangerSingle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/gallery/widget/WidgetMangerSingle;->isLoadBanner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;


# direct methods
.method constructor <init>(Lcom/zui/gallery/widget/WidgetMangerSingle;)V
    .locals 0

    .line 1668
    iput-object p1, p0, Lcom/zui/gallery/widget/WidgetMangerSingle$7;->this$0:Lcom/zui/gallery/widget/WidgetMangerSingle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "isWidget4x3"

    .line 1671
    invoke-static {v0}, Lcom/zui/gallery/widget/WidgetUtils;->queryConformToTheRules(Ljava/lang/String;)V

    return-void
.end method
