namespace WinFormsApp2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            var myForm = new Form2();
            myForm.Show();
            this.Hide();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            var myForm = new Form3();
            myForm.Show();
            this.Hide();

        }
    }
}