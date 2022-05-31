import streamlit as st

def app():
    col1, col2, col3 = st.columns([3, 5, 3])
    caption = '''
    <p
        style="text-align: center;">
        This is Retain Customer
    </p>
    '''
    col2.image('no_churn.png', use_column_width=True, width=500)
    st.markdown(caption, unsafe_allow_html=True)