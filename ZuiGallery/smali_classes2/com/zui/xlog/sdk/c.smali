.class Lcom/zui/xlog/sdk/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/zui/xlog/sdk/ParamMap;

.field final synthetic f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/zui/xlog/sdk/ExAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/zui/xlog/sdk/ParamMap;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    iput-object p2, p0, Lcom/zui/xlog/sdk/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/xlog/sdk/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/xlog/sdk/c;->c:Ljava/lang/String;

    iput p5, p0, Lcom/zui/xlog/sdk/c;->d:I

    iput-object p6, p0, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v1, p0

    :try_start_0
    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->a(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Lcom/zui/xlog/a;

    move-result-object v2

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->c(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->d(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->e(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v5

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->f(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->g(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v7

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->f:Lcom/zui/xlog/sdk/ExAnalyticsTracker;

    invoke-static {v0}, Lcom/zui/xlog/sdk/ExAnalyticsTracker;->h(Lcom/zui/xlog/sdk/ExAnalyticsTracker;)I

    move-result v8

    iget-object v9, v1, Lcom/zui/xlog/sdk/c;->a:Ljava/lang/String;

    iget-object v10, v1, Lcom/zui/xlog/sdk/c;->b:Ljava/lang/String;

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->c:Ljava/lang/String;

    :goto_0
    move-object v11, v0

    iget v12, v1, Lcom/zui/xlog/sdk/c;->d:I

    iget-object v0, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Lcom/zui/xlog/sdk/ParamMap;->getKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v14, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    invoke-virtual {v14, v13}, Lcom/zui/xlog/sdk/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v14

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getKey(I)Ljava/lang/String;

    move-result-object v16

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v17

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getKey(I)Ljava/lang/String;

    move-result-object v18

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v19

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    const/4 v15, 0x3

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getKey(I)Ljava/lang/String;

    move-result-object v20

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v21

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getKey(I)Ljava/lang/String;

    move-result-object v22

    iget-object v13, v1, Lcom/zui/xlog/sdk/c;->e:Lcom/zui/xlog/sdk/ParamMap;

    invoke-virtual {v13, v15}, Lcom/zui/xlog/sdk/ParamMap;->getValue(I)Ljava/lang/String;

    move-result-object v23

    move-object v13, v0

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    invoke-interface/range {v2 .. v22}, Lcom/zui/xlog/a;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method
